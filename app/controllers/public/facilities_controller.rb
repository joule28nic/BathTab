class Public::FacilitiesController < ApplicationController

  def index
    @facilities = Facility.where(prefecture_id: params[:prefecture_id]).page(params[:page])
  end

  def show
    @facility = Facility.find(params[:id])
  end
end
