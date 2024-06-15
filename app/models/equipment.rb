class Equipment < ApplicationRecord

  has_many :equipment_relationships
  has_many :facilities, through: :equipment_relationships

end