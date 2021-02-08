class Hashtag < ApplicationRecord
    has_many :tag_photos
    has_many :photos, through: :tag_photos
end

