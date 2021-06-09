class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :show ]

  def home
  end

  def profile
    @user = current_user.id
  end

end
