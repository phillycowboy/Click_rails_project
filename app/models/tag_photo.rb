class TagPhoto < ApplicationRecord
    belongs_to :hash_tags
    belongs_to :photo
end

# once you chance the table name you can change belong to hashtag 
