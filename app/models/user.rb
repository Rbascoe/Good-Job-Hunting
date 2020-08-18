class User < ApplicationRecord

has_secure_password

has_many :auditions
has_many :jobs, through: :auditions
  
enum role: [:actor, :producer]

validates :username, :email, presence: true, uniqueness: true


end
