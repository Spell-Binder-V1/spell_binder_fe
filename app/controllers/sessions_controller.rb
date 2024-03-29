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
      redirect_to "/decks"
    end
  end

  

  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      response = SpellbinderService.create_user(user)
      session[:user_id] = response[:id]
      redirect_to "/decks"
    else
      flash[:error] = "Invalid credentials"
      redirect_to "/login"
    end
  end

  def logout_omniauth
    user = User.find_by(params[:uid])
    if user.valid?
      session.clear
      redirect_to root_path
    else
      flash[:error] = "Invalid credentials"
      redirect_to "/login"
    end
  end
end