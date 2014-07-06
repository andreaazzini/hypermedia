class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.belongs_to :teacher
      t.belongs_to :school_class

      t.timestamps
    end
  end
end
