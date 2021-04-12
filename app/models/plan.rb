class Plan < ApplicationRecord
    belongs_to :student
    has_many :semesters
    has_many :courses, through: :semesters
    
    validates :nameofplan, presence: true
end