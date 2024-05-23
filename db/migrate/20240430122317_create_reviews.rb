class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :customer_id, null: false
      t.integer :facility_id, null: false
      t.string :title, null: false
      t.integer :total_score, null: false
      t.integer :facility_score, null: false
      t.integer :onsen_score, null: false
      t.integer :service_score, null: false
      t.integer :meal_score, null: false
      t.text :comment, null: false
      t.boolean :is_active, default: true, null: false

      t.timestamps
    end
  end
end
