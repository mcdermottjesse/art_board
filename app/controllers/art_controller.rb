class ArtController < ApplicationController
  def index
    @arts = Art.search(params[:search])
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
    redirect_to "/art"
  end

  def destroy
    @art = Art.find params[:id]
    @art.destroy
    redirect_to "/art"
  end

  private

  def art_params
    params.require(:art).permit(
      :id,
      :name,
      :description,
      :image,
      :search
    )
  end
end
