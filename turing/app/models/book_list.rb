class BookList < ActiveRecord::Base
    belongs_to :material
    belongs_to :school_class
end
