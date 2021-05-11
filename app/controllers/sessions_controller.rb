class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to '/'
    else
      flash[:danger] = "There is a problem with your username or password"
       redirect_to '/login'
    end
  end
end
