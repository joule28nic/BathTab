class EquipmentRelationship < ApplicationRecord

  belongs_to :facility
  belongs_to :equipment

end
