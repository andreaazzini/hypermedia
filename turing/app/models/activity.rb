class Activity < ActiveRecord::Base
  belongs_to :structure
  has_and_belongs_to_many :teachers
end
