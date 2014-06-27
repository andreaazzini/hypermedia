class CreateCirculars < ActiveRecord::Migration
  def change
    create_table :circulars do |t|
      t.date :date
      t.text :text
      t.string :url

      t.timestamps
    end
  end
end
