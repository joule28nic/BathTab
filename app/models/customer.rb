class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: { not_selected: 0, male: 1, female: 2}, _prefix: true
  enum age: { not_selected: 0, teens: 1, twenties: 2, thirties: 3, forties: 4, fifties: 5, sixties: 6}, _prefix: true

  GUEST_USER_EMAIL = "guest@example.com"

  def self.guest
    find_or_create_by!(email: GUEST_USER_EMAIL) do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
      user.sex = 0
      user.age = 0
    end
  end

end
