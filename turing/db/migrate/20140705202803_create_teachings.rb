class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.belongs_to :teacher
      t.belongs_to :school_class
      t.string :subject
      t.string :coordinator

      t.timestamps
    end
  end
end
