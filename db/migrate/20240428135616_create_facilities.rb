class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.integer :prefecture_id, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :address, null: false
      t.string :telephone_number, null: false
      t.string :business_hours, null: false
      t.string :regular_holiday, null: false
      t.string :price, null: false
      t.text :access, null: false
      t.integer :parking, null: false

      t.timestamps
    end
  end
end
