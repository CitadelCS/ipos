class Student < ApplicationRecord
  validates_presence_of :Name
  validates_presence_of :CWID
  validates_presence_of :Concentration
  validates_presence_of :Advisor
end
