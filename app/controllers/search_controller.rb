class SearchController < ApplicationController

  def index
    
    @arts = Art.search(params[:search])
    @art = current_user.id
  end
end
