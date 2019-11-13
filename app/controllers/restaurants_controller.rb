class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  # /restaurants/:id   as restaurant
  def show

  end

  # /restaurants/:id/edit  as new_restaurant
  def new
    @restaurant = Restaurant.new
  end
  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
