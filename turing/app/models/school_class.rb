class SchoolClass < ActiveRecord::Base
    has_and_belongs_to_many :materials
    has_and_belongs_to_many :circulars

    has_many :teachings
    has_many :book_lists
    has_many :materials, :through => :book_lists
    has_many :teachers, :through => :teachings
    has_many :boards
end
