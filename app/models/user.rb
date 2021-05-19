
class User < ApplicationRecord
  has_many :arts
  has_secure_password

  validates :username, presence: true
  validates :username, length: {minimum: 5}
  validates :password, presence: true
  validates :password, length: { minimum: 5 }
end
