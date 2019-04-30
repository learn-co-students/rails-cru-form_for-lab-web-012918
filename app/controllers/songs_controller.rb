class SongsController < ApplicationController
  def index
    @songs= Song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  def create
    @song = Song.new(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    @song.save
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def update
    @song = Song.new(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end
end
