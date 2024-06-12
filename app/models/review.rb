class Review < ApplicationRecord

  belongs_to :customer
  belongs_to :facility
  has_many :likes

  validates :total_score, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true

  def liked_by?(customer)
    likes.exists?(customer_id: customer.id)
  end

end
