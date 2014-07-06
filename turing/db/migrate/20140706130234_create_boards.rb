class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :school_class_id
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
