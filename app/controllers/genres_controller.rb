class GenresController < ApplicationController
  def index
    @genres= Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])
    @genre.save
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new
  end

  def update
    @genre = Genre.new(name: params[:genre][:name])
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end
end
