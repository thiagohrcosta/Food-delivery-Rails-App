class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end


  end

  def show
    @restaurants = Restaurant.all

    @restaurant = Restaurant.find(params[:id])
    @meals = Meal.all

    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
  end


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to user_profile_path
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :photo,
      :description,
      :address,
      :latitude,
      :longitude,
      :category,
      :user_id,
      )
  end
end
