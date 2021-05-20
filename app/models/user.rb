
class User < ActiveRecord::Base
  has_many :arts
  has_secure_password

  validates :username, presence: true, length: {minimum: 5}, uniqueness: {:case_sensitive => false}
  validates :username, length: {minimum: 5}
  validates :password, presence: true
  validates :password, length: { minimum: 5 }



def self.authenticate_with_credentials(username, password)

  user = User.find_by_username(username)

  if user && user.authenticate(password)
    user
  else
    nil
  end
end

end