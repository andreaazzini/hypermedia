class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :teacher_id
      t.string :name
      t.string :surname
      t.integer :age
      t.string :photo_url
      t.string :curriculum

      t.timestamps
    end
  end
end
