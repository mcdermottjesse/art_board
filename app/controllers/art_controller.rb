class ArtController < ApplicationController
  def index
    @arts = Art.order(id: :desc).all
  end

  def show
    @arts = Art.find params[:id]
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)

    @art.save
    redirect_to "/art/:id"
  end
  
  private

  def art_params
    params.require(:art).permit(
      :id,
      :name,
      :description,
      :image
    )
  end
end
