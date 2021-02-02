class User < ApplicationRecord
    has_many :comments 
    has_many :photos, through: :comments 
    has_secure_password 
end
