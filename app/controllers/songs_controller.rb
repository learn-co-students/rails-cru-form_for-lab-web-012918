class SongsController < ApplicationController
  before_action :set_song, only:[:show, :edit, :update]
  def new
    @song = Song.new
    render "form"
  end
  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end
  def index
    @songs = Song.all
  end
  def edit
    render "form"
  end
  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end
  def show
  end
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
  def set_song
    @song = Song.find(params[:id])
  end
end
