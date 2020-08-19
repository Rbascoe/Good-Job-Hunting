class User < ApplicationRecord

has_secure_password

has_many :auditions
has_many :audition_jobs, through: :auditions, source: :jobs 
has_many :jobs 
  
enum role: [:actor, :producer]

validates :username, :email, presence: true, uniqueness: true


end
