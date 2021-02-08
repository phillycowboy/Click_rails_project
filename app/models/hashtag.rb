class Hashtag < ApplicationRecord
    has_many :comments
    has_many :photos, through: :comments
end

