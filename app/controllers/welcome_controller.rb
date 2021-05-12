class WelcomeController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    @arts = Art.all
  end
end
