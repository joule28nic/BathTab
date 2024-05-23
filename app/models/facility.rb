class Facility < ApplicationRecord

  has_one_attached :image

  belongs_to :prefecture
  has_many :reviews

end
