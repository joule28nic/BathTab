class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.integer :facility_id, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
