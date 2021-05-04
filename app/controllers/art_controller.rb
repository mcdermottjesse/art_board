class ArtController < ApplicationController
  def index
    @arts = Art.order(id: :desc).all
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)

    @art.save
    redirect_to "/art"
  end
  
  private

  def art_params
    params.require(:art).permit(
      :name,
      :description,
      :image
    )
  end
end
