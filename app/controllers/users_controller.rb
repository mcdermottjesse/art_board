class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def create
    user = User.new(user_params)
    if user.save
    session[:user_id] = user.id
    redirect_to '/art'
    else
      flash[:danger] = "All fields need to be filled correctly"
      redirect_to '/signup'
end
end

private
def user_params
  params.require(:user).permit(:username, :password)
  end
  end

