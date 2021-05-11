class Search < ApplicationRecord

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
      else
        Art.all
      end
    end
end
