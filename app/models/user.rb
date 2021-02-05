class User < ApplicationRecord
    has_many :comments 
    has_many :photos, through: :comments 
    has_secure_password 
    validates :username, presence: true 
    validates :username, uniqueness: true 
    validates :password, length: {minimum: 6, message: "must have at least 6 characters."} 
end
