class Art < ApplicationRecord
  
  
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: {maximum: 25}

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
      else
        Art.all
      end
    end
end

