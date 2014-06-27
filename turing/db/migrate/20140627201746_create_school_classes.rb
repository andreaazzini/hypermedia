class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.integer :year
      t.string :section
      t.text :timetable
      t.text :council

      t.timestamps
    end
  end
end
