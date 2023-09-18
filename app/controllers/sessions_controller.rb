class SessionsController < ApplicationController
  def login_form

  end

  def login
    user = UserFacade.get_user(params[:email], params[:password])
    if user.nil?
      flash[:error] = "Invalid credentials"
      redirect_to "/login"
    else
      session[:user_id] = user.id
      redirect_to "/dashboard/#{user.id}"
    end
  end
end