class Review < ApplicationRecord

  belongs_to :customer
  belongs_to :facility
  has_many :likes

  validates :title, presence: true
  validates :total_score, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true
  validates :comment, presence: true

  def liked_by?(customer)
    likes.exists?(customer_id: customer.id)
  end

  def self.ransackable_attributes(auth_object = nil)
    ["comment", "created_at", "customer_id", "facility_id", "facility_score", "id", "is_active", "meal_score", "onsen_score", "service_score", "title", "total_score", "updated_at"]
  end

end
