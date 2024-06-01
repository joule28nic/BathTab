class AddGeocodingColumnToFacility < ActiveRecord::Migration[6.1]
  def change
    add_column :facilities, :latitude, :float, null: false, default: 0
    add_column :facilities, :longitude, :float, null: false, default: 0
  end
end
