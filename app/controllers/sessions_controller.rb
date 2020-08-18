class SessionsController < ApplicationController
  def login 
  end

  def process_login
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to user_path(user), notice: "Logged In!"
    else
      flash.now[:alert] = "Username or password Invalid!"
      render :login
    end
  end

  def logout
    session.clear 
    redirect_to login_path 
  end

end
