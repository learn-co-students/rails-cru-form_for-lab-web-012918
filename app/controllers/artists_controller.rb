class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(post_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def destroy
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def post_params(*args)
    params.require(:artist).permit(*args)
  end
end
