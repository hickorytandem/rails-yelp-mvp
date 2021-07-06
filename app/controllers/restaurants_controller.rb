class RestaurantsController < ApplicationController

  # Get/ restaurants
  def index
    @restaurants = Restaurant.all
  end
  # Get /restaurants/1
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  # GET /restaurants/new

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end


  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was succesfully created.'
    else
      render :new
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated'
    else
      render :edit
    end
  end


  # DELETE / restaurants/1

  def destroy
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end

