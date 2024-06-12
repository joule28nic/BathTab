class Public::ReviewsController < ApplicationController
  before_action :authenticate_customer!

  def new
    @facility = Facility.find(params[:facility_id])
    @review = @facility.reviews.new
  end

  def comfirm
    @review = Review.new(review_params)
  end

  def create
    @review = Review.new(review_params)
    @review.customer_id = current_customer.id
    @review.save
    redirect_to facility_review_path(@review.facility_id, @review)
  end

  def index
    @facility = Facility.find(params[:facility_id])
    @reviews = @facility.reviews.page(params[:page]).per(10)
  end

  def show
    @facility = Facility.find(params[:facility_id])
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to customers_reviews_path
  end


  private

  def review_params
    params.require(:review).permit(:customer_id, :facility_id, :title, :total_score, :facility_score, :onsen_score, :service_score, :meal_score, :comment)
  end

end
