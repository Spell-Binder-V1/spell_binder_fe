class SessionsController < ApplicationController
  def login_form

  end

  def login
    user = UserFacade.find_user(params[:username], params[:password])
    if user.nil?
      flash[:error] = "Invalid credentials"
      redirect_to "/login"
    else
      session[:user_id] = user.id
      redirect_to "/dashboard"
    end
  end

  def create
    render text: request.env["omniauth.auth"].inspect
  end
end