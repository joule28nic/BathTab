class Admin::ReviewsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @facility = Facility.find(params[:facility_id])
    @reviews = Review.all
  end

  def show
    @facility = Facility.find(params[:facility_id])
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to admin_facility_review_path(@review.facility_id, @review)
    else
      render admin_facility_review_path(@review.facility_id, @review)
    end
  end


  private

  def review_params
    params.require(:review).permit(:total_score, :facility_score, :onsen_score, :service_score, :meal_score, :is_active)
  end

end
