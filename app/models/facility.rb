class Facility < ApplicationRecord

  has_one_attached :image

  belongs_to :prefecture
  has_many :reviews

  geocoded_by :address
  after_validation :geocode

end
