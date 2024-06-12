class Public::FacilitiesController < ApplicationController

  def index
    @facilities = Facility.page(params[:page])
  end

  def show
    @facility = Facility.find(params[:id])
  end
end
