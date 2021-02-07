class Photo < ApplicationRecord
    belongs_to :user 
    has_many :tag_photos
    has_many :hash_tags, through: :tag_photos
    has_many :comments

    validates :image, presence: true 
    validates :description, presence: true  

    def self.search(search)
        if search.blank?
            Photo.all
        else 
            where('description LIKE ?', "%#{search}%")
        end
    end
end
