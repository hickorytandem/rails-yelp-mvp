class ReviewsController < ApplicationController
  before_action :find_restaurant
  def new
    @review = Review.new
  end

  def create
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
