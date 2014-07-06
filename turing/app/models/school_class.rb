class SchoolClass < ActiveRecord::Base
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :circulars

  #has_and_belongs_to_many :teachers
  has_many :teachings
  has_many :teachers, through: :teachings
end
