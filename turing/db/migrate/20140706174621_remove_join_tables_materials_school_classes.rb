class RemoveJoinTablesMaterialsSchoolClasses < ActiveRecord::Migration
  def change
      drop_join_table :materials, :school_classes
  end
end
