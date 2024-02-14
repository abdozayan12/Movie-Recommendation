# app/controllers/movies_controller.rb

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      # Redirect or render success message
      render 'success'
    else
      # Render error message or form again
      render 'error try again'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
    # Additional logic for editing a movie
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      # Redirect or render success message
      render 'success'
    else
      # Render error message or form again
      render 'try again'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    # Redirect or render success message
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :release_year, :director, :cast, :genre_ids)
    # Include any other permitted attributes
  end
end
