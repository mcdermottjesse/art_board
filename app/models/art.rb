class Art < ApplicationRecord
  
  belongs_to :user
  
  validates :name, presence: true, length: {maximum: 20}
  validates :image, presence: true
  validates :description, presence: true, length: {maximum: 25}
  validates :user_id, presence: true

  def self.search(search)
    if search
      
      where('LOWER(name) LIKE :search OR LOWER(description) LIKE :search', search: "%#{search.downcase}%") #add abiltiy to search by description too
      
      else
        Art.all
      end
    end
end

