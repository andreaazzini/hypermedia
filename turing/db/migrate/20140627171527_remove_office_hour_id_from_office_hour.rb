class RemoveOfficeHourIdFromOfficeHour < ActiveRecord::Migration
  def change
    remove_column :office_hours, :office_hour_id, :integer
  end
end
