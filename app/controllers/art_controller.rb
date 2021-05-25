class ArtController < ApplicationController
  
  def index
    @arts = current_user.arts
    @art = current_user.id
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
    if @art.valid?
        @art.user = current_user
        @art.save
        redirect_to "/art"
else
  flash[:danger] = "All fields need to be filled.
                    Title length can be no more that 10 characters. 
                    Description length can be no more than 25 characters"
      redirect_to "/art/new"
end
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
