class Plan < ApplicationRecord
    belongs_to :students
    has_many :semesters
end