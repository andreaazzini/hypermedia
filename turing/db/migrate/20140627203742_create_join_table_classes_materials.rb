class CreateJoinTableClassesMaterials < ActiveRecord::Migration
  def change
    create_join_table :school_classes, :materials do |t|
      t.index :school_class_id
      t.index :material_id
    end
  end
end
