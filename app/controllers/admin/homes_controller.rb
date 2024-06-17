class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_q, only: [:top]

  def top
    @regions = Region.all
  end

private

def set_q
  @q = Facility.ransack(params[:q])
end

end
