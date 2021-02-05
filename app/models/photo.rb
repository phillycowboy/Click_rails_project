class Photo < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments

    # validates :image, presence: true 
    # validates :description, presence: true  
end
