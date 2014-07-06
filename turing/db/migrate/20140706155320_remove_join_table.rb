class RemoveJoinTable < ActiveRecord::Migration
  def change
    drop_join_table :teachers, :school_classes
  end
end
