class Facility < ApplicationRecord

  has_one_attached :image

  belongs_to :prefecture
  has_many :reviews
  has_many :equipment_relationships

  geocoded_by :address
  after_validation :geocode

end
