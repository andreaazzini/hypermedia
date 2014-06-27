class AddSubjectInTeachersSchoolClasses < ActiveRecord::Migration
  def change
    add_column :school_classes_teachers, :subject, :string
    add_column :school_classes_teachers, :coordinator, :integer
  end
end
