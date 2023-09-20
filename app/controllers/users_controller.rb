class UsersController < ApplicationController
  def new

  end

  def create
    if params[:password] == params[:password_confirmation]
      UserFacade.create_user(params[:username], params[:email], params[:password])
      redirect_to "/dashboard"
      # flash[:success] = "Welcome, #{params[:username]}!"
    else
      flash[:error] = "Passwords do not match"
      redirect_to "/register"
    end
  end
end