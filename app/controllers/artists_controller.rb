class ArtistsController < ApplicationController

  before_action :set_artist, only: [:show, :edit, :update]
  def new
    @artist = Artist.new
  end

  def show
  end

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.create(get_params)
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(get_params)
    redirect_to artist_path(@artist)
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end
  def get_params
    params.require(:artist).permit(:name, :bio)
  end
end
