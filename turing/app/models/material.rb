class Material < ActiveRecord::Base
    has_many :book_lists
    has_many :school_classes, :through => :book_lists
end
