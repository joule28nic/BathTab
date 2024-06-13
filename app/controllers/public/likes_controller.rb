class Public::LikesController < ApplicationController
  before_action :authenticate_customer!

  def create
    review = Review.find(params[:review_id])
    like = current_customer.likes.new(review_id: review.id)
    like.save
    redirect_to facility_review_path(review.facility_id, review)
  end

  def destroy
    review = Review.find(params[:review_id])
    like = current_customer.likes.find_by(review_id: review.id)
    like.destroy
    redirect_to facility_reviews_path(review.facility_id)
  end
end
