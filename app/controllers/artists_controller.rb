class ArtistsController < ApplicationController
  before_action :set_artist, only:[:show, :edit, :update]
  def new
    @artist = Artist.new
    render "form"
  end
  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end
  def index
    @artists = Artist.all
  end
  def edit
    render "form"
  end
  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end
  def show
  end
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
  def set_artist
    @artist = Artist.find(params[:id])
  end
end
