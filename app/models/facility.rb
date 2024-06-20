class Facility < ApplicationRecord

  has_one_attached :image

  belongs_to :prefecture
  has_many :reviews
  has_many :equipment_relationships, dependent: :destroy
  has_many :equipment, through: :equipment_relationships
  has_many :favorites, dependent: :destroy

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :business_hours, presence: true
  validates :regular_holiday, presence: true
  validates :price, presence: true
  validates :access, presence: true

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

  def self.ransackable_attributes(auth_object = nil)
    ["access", "address", "business_hours", "created_at", "id", "latitude", "longitude", "name", "name_kana", "prefecture_id", "price", "regular_holiday", "telephone_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["access", "address", "business_hours", "created_at", "equipment", "id", "latitude", "longitude", "name", "name_kana", "prefecture_id", "price", "regular_holiday", "reviews", "telephone_number", "updated_at"]
  end

end
