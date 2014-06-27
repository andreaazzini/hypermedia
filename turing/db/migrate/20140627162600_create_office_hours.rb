class CreateOfficeHours < ActiveRecord::Migration
  def change
    create_table :office_hours do |t|
      t.integer :office_hour_id
      t.integer :teacher_id
      t.string :day
      t.time :hour

      t.timestamps
    end
  end
end
