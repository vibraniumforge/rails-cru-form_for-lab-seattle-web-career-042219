class GenresController < ApplicationController
  
  def index
    @genres = Genre.all
  end

  def show
    find_genre
  end
  
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.create(genre_params)
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    find_genre
  end

  def edit
    find_genre
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end
end