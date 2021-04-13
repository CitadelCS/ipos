class Course < ApplicationRecord
  validates_presence_of :prefix
  validates_presence_of :name
  validates_presence_of :number
  validates_presence_of :section
end
