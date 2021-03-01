class Hashtag < ApplicationRecord
    has_many :comments
    has_many :photos, through: :comments



    def self.love 
        Hashtag.where(tag: '#love').first.comments
    end
end

# create a new page with the photos that have the hashtag love 