class Activity < ActiveRecord::Base
  belongs_to :structures
  has_and_belongs_to_many :teachers
end
