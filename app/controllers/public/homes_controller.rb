class Public::HomesController < ApplicationController
  before_action :set_q, only: [:top]

  def top
    @regions = Region.all
    @equipment = Equipment.all
  end


  private

  def set_q
    @q = Facility.ransack(params[:q])
  end
end
