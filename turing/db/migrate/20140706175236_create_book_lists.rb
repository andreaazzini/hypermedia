class CreateBookLists < ActiveRecord::Migration
  def change
    create_table :book_lists do |t|
      t.belongs_to :material
      t.belongs_to :school_class

      t.timestamps
    end
  end
end
