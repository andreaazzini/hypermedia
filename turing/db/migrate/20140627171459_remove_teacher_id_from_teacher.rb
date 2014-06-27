class RemoveTeacherIdFromTeacher < ActiveRecord::Migration
  def change
    remove_column :teachers, :teacher_id, :integer
  end
end
