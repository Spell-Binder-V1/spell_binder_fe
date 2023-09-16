class DashboardController < ApplicationController
  #session controller??
  def index
    @user = UserFacade.get_user(params[:id])
  end
end