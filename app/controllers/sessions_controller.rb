class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def create
    user = User.authenticate_with_credentials(params[:username], params[:password])
    if user
       session[:user_id] = user.id
       redirect_to '/art'
    else
      flash[:danger] = "There is a problem with your username or password"
       redirect_to '/login'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
