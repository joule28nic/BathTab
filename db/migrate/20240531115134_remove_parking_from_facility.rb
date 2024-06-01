class RemoveParkingFromFacility < ActiveRecord::Migration[6.1]
  def change
    remove_column :facilities, :parking, :integer
  end
end
