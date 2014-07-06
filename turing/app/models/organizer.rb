class Organizer < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :activity
end
