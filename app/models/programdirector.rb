class Programdirector < ApplicationRecord
    has_many :professors
    #belongs_to :users
    
    validates :Name, presence: true
    validates :CWID, presence: true
end
