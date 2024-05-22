class CreateEquipmentRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment_relationships do |t|
      t.integer :facility_id, null: false
      t.integer :equipment_id, null: false

      t.timestamps
    end
  end
end
