class Admin::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
  end

  def update
  end
end
