class Circular < ActiveRecord::Base
  has_and_belongs_to_many :school_classes
end
