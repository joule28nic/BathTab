class Facility < ApplicationRecord

  has_one_attached :image

  belongs_to :prefecture
  has_many :reviews
  has_many :equipment_relationships
  has_many :favorites, dependent: :destroy

  geocoded_by :address
  after_validation :geocode

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/default-image.png')
      image.attach(io: File.open(file_path), filename: 'default-image.png', content_type: 'image/png')
    end
    image
  end

  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

end
