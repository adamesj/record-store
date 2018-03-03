class AlbumsController < ApplicationController
  before_action :set_category

  def show; end

  def new
    @album = Album.new
  end

  def create
    @category = @category.album.build(album_params)
    if @album.save
      flash[:notice] = "You have successfully added a new album!"
      redirect_to albums_url
    else
      flash[:alert] = "Oops, something went wrong. Couldn't add a new album!"
      render :new
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, :description, :image_url, :price)
  end

  def set_category
    @category = Category.friendly.find(params[:id])
  end
end