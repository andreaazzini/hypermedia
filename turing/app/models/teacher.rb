class Teacher < ActiveRecord::Base
  has_many :office_hours

  has_many :organizers
  has_many :activities, through: :organizers

  has_many :teachings
  has_many :school_classes, through: :teachings
end
