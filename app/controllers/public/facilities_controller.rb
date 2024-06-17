class Public::FacilitiesController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    if @q
      @facilities = @q.result.page(params[:page])
    else
      @facilities = Facility.all.page(params[:page])
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
