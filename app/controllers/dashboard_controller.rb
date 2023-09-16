class DashboardController < ApplicationController
  #session controller??
  def index
    @user = UserFacade.get_user(params[:id])
  end

  def show
    user_id = params[:id]
    @user = UserFacade.get_user(user_id)

    if @user
      render :show
    else
      flash[:error] = "User not found"
      redirect_to root_path
    end
  end
end