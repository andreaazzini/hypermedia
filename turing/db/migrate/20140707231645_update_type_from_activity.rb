class UpdateTypeFromActivity < ActiveRecord::Migration
  def change
      remove_column :activities, :type
      add_column :activities, :activity_type, :string
  end
end
