class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :show ]

  def home
  end

  def profile
    @restaurants = Restaurant.all
    @meals = Meal.all
    @user = current_user.id
  end

end
