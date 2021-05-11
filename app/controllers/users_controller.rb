class UsersController < ApplicationController
  def create
    user = User.create(params.require(:user).permit(:username, :password))
    if user.save
    session[:user_id] = user.id
    redirect_to '/'
    else
      flash[:danger] = "All fields need to be filled correctly"
      redirect_to '/signup'
end
end
end

