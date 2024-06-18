class Equipment < ApplicationRecord

  has_many :equipment_relationships
  has_many :facilities, through: :equipment_relationships

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["equipment_relationships", "facilities"]
  end

end