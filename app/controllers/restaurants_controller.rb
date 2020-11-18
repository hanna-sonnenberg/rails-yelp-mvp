class RestaurantsController < ApplicationController
  # A visitor can see the list of all restaurants
  def index
    @restaurants = Restaurant.all
  end
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  # TO-DO: POST "restaurants"
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant
  # TO-DO: GET "restaurants/38"

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
