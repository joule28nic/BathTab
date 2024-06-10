class Favorite < ApplicationRecord

  belongs_to :customer
  belongs_to :facility

  validates :customer_id, uniqueness: {scope: :facility_id}

end
