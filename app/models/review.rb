class Review < ApplicationRecord

  belongs_to :customer
  belongs_to :facility
  has_many :ilkes

end
