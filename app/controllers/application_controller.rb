class ApplicationController < ActionController::Base
helper_method :current_user
before_action :authorized
  def current_user
    User.find_by(id: session[:user_id])  
end
def authorized
  redirect_to '/login' unless current_user
end

end