class User < ApplicationRecord
    has_many :photos 
    has_many :comments 
    has_many :photos, through: :comments 
end
