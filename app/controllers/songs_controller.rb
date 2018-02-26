class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create

    # byebug
    @song = Song.new(post_params(:name))
    @genre = Genre.find(params[:song][:genre_id])
    @song.genre = @genre
    @artist = Artist.find(params[:song][:artist_id])
    @song.artist = @artist
    @song.save

    redirect_to @song

  end

  def edit
    @song = Song.find(params[:id])
  end


  def update
    @song = Song.find(params[:id])
    @song.update(post_params(:name))
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])

    @genre = @song.genre
    @artist = @song.artist
  end



  def index
    @songs = Song.all
  end

  private

  def post_params(*args)
    params.require(:song).permit(*args)
  end
end
