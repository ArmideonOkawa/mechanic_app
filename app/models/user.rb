class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :password_digest,presence: true, uniqueness: true
    has_secure_password 
    has_many :cars
    
    
end
