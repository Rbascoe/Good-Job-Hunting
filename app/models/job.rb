class Job < ApplicationRecord
    has_many :auditions
    has_many :users_auditions, through: :auditions, source: :users
    belongs_to :user

    def display_title
        return self.title.titlecase 
    end
    
end
