class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: { not_selected: 0, male: 1, female: 2}, _prefix: true
  enum age: { not_selected: 0, teens: 1, twenties: 2, thirties: 3, forties: 4, fifties: 5, sixties: 6}, _prefix: true
end
