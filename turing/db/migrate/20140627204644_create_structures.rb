class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.string :room
      t.text :description

      t.timestamps
    end
  end
end
