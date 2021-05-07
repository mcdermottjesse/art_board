class Art < ApplicationRecord
  
  
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: {maximum: 25}

  def self.search(search)
    if search
      art = Art.find_by(name: search)
      if art
        where(id: art)
      else
        Art.all
      end
      else
        Art.all
      end
end
end

