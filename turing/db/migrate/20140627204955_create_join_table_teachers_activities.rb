class CreateJoinTableTeachersActivities < ActiveRecord::Migration
  def change
    create_join_table :teachers, :activities do |t|
      t.index :teacher_id
      t.index :activity_id
    end
  end
end
