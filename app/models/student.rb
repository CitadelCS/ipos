class Student < ApplicationRecord
    has_many :plans
    belongs_to :professors
end
