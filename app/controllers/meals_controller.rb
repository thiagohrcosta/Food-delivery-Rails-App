class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  before_action :find_restaurant, only: [:new, :create]

  def index
    @meals = Meal.all
  end

  def show;end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.restaurant.id = @restaurant
    if @meal.save
      redirect_to user_profile_path(current_user.id)
    else
      render :new
    end
  end

  def edit;end

  def update
    if @meal.update(meal_params)
      redirect_to user_profile_path(current_user.id)
    else
      render :new
    end

  end

  def destroy
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :photo, :price, :description, :restaurant_id)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
