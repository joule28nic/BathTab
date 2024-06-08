class Admin::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @facility = Facility.find(params[:facility_id])
    @review = Review.find(params[:id])
  end

  def update
  end
end
