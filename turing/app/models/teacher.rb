class Teacher < ActiveRecord::Base
  has_many :office_hours
  has_and_belongs_to_many :school_classes
  has_and_belongs_to_many :activities
end
