class Photo < ApplicationRecord
    belongs_to :user 
    has_many :comments
    has_many :hashtags, through: :comments

    validates :image, presence: true 
    validates :description, presence: true 
    

    # def self.search(search)
    #     if search.blank?
    #         Photo.all
    #     else 
    #         where('description LIKE ?', "%#{search}%")
    #     end
    # end

    scope :search, ->(search) {where("description LIKE ?", "%#{search}%") if search.present? }


end
