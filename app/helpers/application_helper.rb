module ApplicationHelper
  def display_availability(a)
    a.local_start_time.strftime("%m/%d/%Y") +
    " from " + a.local_start_time.strftime("%I:%M%P") +
    " to " + a.local_end_time.strftime("%I:%M%P ") + a.timezone +
    " at " + (a.location.blank? ? "Dev Bootcamp" : a.location) +
    (a.city.nil? ? "" : " in #{a.city}.")
  end

  def display_appointment(a)
    link_to_user(a.mentor) + " is mentoring " +
    link_to_user(a.mentee) + " on " +
    display_availability(a)
  end

  def link_to_user(m)
    link_to(m.name + " - #{m.total_kudos}", href_to_twitters_user(m))
  end

  def href_to_twitters_user(m)
    "https://twitter.com/" + m.twitter_handle
  end

  def month_link(symbol, month)
    link_to symbol, :month => month.strftime("%Y-%m-01")
  end
end
