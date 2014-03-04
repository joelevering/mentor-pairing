class AddAvailabilityCity < ActiveRecord::Migration
  def change
    add_column :availabilities, :city, :string
  end
end
