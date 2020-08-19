class Job < ApplicationRecord
    has_many :auditions
    has_many :users_auditions, through: :auditions, source: :users
    belongs_to :user
end
