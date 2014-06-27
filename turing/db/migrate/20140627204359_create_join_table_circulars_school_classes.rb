class CreateJoinTableCircularsSchoolClasses < ActiveRecord::Migration
  def change
    create_join_table :school_classes, :circulars do |t|
      t.index :school_class_id
      t.index :circular_id
    end
  end
end
