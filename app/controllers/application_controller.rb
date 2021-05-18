class ApplicationController < ActionController::Base
helper_method :current_user
before_action :authorized
  def current_user
    User.find_by(id: session[:user_id])  
end
def authorized
  redirect_to '/login' unless current_user
end

def route_not_found
  render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
end

end