class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :structure_id
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
