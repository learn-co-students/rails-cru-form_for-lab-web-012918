class GenresController < ApplicationController
  before_action :set_genre, only:[:show, :edit, :update]
  def new
    @genre = Genre.new
    render "form"
  end
  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end
  def index
    @genres = Genre.all
  end
  def edit
    render "form"
  end
  def update
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end
  def show
  end
  def genre_params
    params.require(:genre).permit(:name)
  end
  def set_genre
    @genre = Genre.find(params[:id])
  end
end
