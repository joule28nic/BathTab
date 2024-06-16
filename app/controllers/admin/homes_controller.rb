class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @regions = Region.all
  end
end
