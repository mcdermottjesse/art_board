class Art < ApplicationRecord
  
  
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: {maximum: 25}

end
