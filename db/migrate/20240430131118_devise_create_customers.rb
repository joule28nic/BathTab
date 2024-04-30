# frozen_string_literal: true

class DeviseCreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.string :name, null: false
      t.integer :sex, null: false
      t.integer :age, null: false
      t.boolean :is_active, default: true, null: false

      t.timestamps null: false
    end

    add_index :customers, :email,                unique: true
    add_index :customers, :reset_password_token, unique: true
    # add_index :customers, :confirmation_token,   unique: true
    # add_index :customers, :unlock_token,         unique: true
  end
end
