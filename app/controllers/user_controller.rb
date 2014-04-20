class UserController < ApplicationController

  def login
    @user = User.new
  end

  def create_session
    user = User.find_by_email(params[:user][:email])
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to events_path
    else
      redirect_to user_login_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to user_login_path
  end
end
