class Prefecture < ApplicationRecord

  belongs_to :region
  has_many :facilities

  def self.by_region(region_id)
    where(region_id: region_id)
  end

end