class ArtController < ApplicationController
  
  def index
    @arts = current_user.arts
end

  def show
    @arts = Art.find params[:id]
    @art = current_user.id
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.user = current_user
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
      :user_id,
      :search
    ).merge(user: current_user)
  end
end
