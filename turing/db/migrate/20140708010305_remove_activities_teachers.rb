class RemoveActivitiesTeachers < ActiveRecord::Migration
  def change
    drop_join_table :teachers, :activities
  end
end
