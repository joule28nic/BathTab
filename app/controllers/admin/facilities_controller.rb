class Admin::FacilitiesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @facilities = Facility.page(params[:page]).per(10)
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to admin_facility_path(@facility)
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end

  def edit
    @facility = Facility.find(params[:id])
  end

  def update
    @facility = Facility.find(params[:id])
    if @facility.update(facility_params)
      redirect_to admin_facility_path(@facility)
    else
      render edit_admin_facility_path(@facility)
    end
  end


  private

  def facility_params
    params.require(:facility).permit(:name, :name_kana, :prefecture_id, :address, :telephone_number, :business_hours, :regular_holiday, :price, :image, :access)
  end

end
