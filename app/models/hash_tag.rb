class HashTag < ApplicationRecord
    has_many :tag_photos
    has_many :photos, through: :tag_photos
end


# needs to be Hashtag

# needs to be tags_photos 