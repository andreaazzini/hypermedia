class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :teachers, :school_classes do |t|
      t.index :teacher_id
      t.index :school_class_id
    end
  end
end
