class Public::ReviewsController < ApplicationController
  before_action :authenticate_customer!

  def new
    @review = Review.new
  end

  def comfirm
    @review = Review.new(review_params)
  end

  def create
  end

  def index
  end

  def show
  end

  def destroy
  end


  private

  def review_params
    params.require(:review).permit(:customer_id, :facility_id, :title, :total_score, :facility_score, :onsen_score, :service_score, :meal_score, :comment)
  end

end
