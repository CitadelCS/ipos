class Semester < ApplicationRecord
    belongs_to :plan 
    has_many :courses
    
    validates :course1, presence: true
    validates :season, presence: true
    validates :year, presence: true
end