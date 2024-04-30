class CreateFavolites < ActiveRecord::Migration[6.1]
  def change
    create_table :favolites do |t|
      t.integer :customer_id, null: false
      t.integer :facility_id, null: false

      t.timestamps
    end
  end
end
