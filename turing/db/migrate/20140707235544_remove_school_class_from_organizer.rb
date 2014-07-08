class RemoveSchoolClassFromOrganizer < ActiveRecord::Migration
  def change
      remove_column :organizers, :school_class_id
      add_column :organizers, :activity_id, :integer
  end
end
