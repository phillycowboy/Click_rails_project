class TagPhoto < ApplicationRecord
    belongs_to :hash_tags
    belongs_to :photo
end
