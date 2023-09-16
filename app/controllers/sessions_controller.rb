class SessionsController < ApplicationController
  def login_form
  end

  def login
    email = params[:email]
    password = params[:password]

    user = UserFacade.authenticate(email, password)
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to "/dashboard/#{user.id}"
    else
      flash[:error] = "Invalid email or password"
      render :login_form
    end
  end
end 