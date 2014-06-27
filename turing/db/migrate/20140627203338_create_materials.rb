class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :isbn
      t.string :publisher

      t.timestamps
    end
  end
end
