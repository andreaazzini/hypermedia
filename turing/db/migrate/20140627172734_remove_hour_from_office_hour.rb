class RemoveHourFromOfficeHour < ActiveRecord::Migration
  def change
    remove_column :office_hours, :hour, :time
    add_column :office_hours, :hour, :integer
    add_column :office_hours, :minute, :integer
  end
end
