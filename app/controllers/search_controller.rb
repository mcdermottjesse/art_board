class SearchController < ApplicationController

  def index
    @arts = Art.search(params[:search])
  end
end
