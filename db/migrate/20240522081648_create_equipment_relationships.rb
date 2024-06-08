class CreateEquipmentRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment_relationships do |t|
      t.integer :facility_id, null: false
      t.integer :equipment_id, null: false

      t.timestamps
    end
    add_index :equipment_relationships, [:facility_id, :equipment_id], unique: true
  end
end
