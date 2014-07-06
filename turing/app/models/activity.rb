class Activity < ActiveRecord::Base
  belongs_to :structure

  has_many :organizers
  has_many :teachers, through: :organizers
end
