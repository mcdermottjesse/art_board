class Art < ApplicationRecord
  
  belongs_to :user
  
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: {maximum: 25}
  validates :user_id, presence: true

  def self.search(search)
    if search
      
      where('name LIKE ?', "%#{search}%") #add abiltiy to search by description too
      
      else
        Art.all
      end
    end
end

