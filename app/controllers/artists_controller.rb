class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(get_artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(get_artist_params)
    redirect_to artist_path(@artist)
  end

  private
  def get_artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
