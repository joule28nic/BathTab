class Public::FavoritesController < ApplicationController

  def create
    facility = Facility.find(params[:facility_id])
    favorite = current_customer.favorites.new(facility_id: facility.id)
    favorite.save
    redirect_to facility_path(facility)
  end

  def destroy
    facility = Facility.find(params[:facility_id])
    favorite = current_customer.favorites.find_by(facility_id: facility.id)
    favorite.destroy
    redirect_to facilities_path
  end

end
