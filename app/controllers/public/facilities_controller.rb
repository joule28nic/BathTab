class Public::FacilitiesController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @prefectures = Prefecture.all
    @equipment = Equipment.all
    if @q
      @facilities = @q.result.page(params[:page]).per(10)
    else
      @facilities = Facility.all.page(params[:page]).per(10)
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end


  private

  def set_q
    @q = Facility.ransack(params[:q])
  end

end
