class Job < ApplicationRecord
    has_many :auditions
    has_many :users, through: :auditions 
end
