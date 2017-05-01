class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render("/index.html.erb")
  end

  def show
    @movie= Movie.find(params[:id])
    render("/movies/show.html.erb")
  end

  def new_form
    render('movies/new_form')
  end

  def create_movie
    @movie=Movie.new
    @movie.title= params[:title]
    @movie.year= params[:year]
    @movie.duration= params[:duration]
    @movie.description= params[:description]
    @movie.image_url= params[:image_url]
    @movie.save

    redirect_to("/index")
  end

  def edit_form
    @movie= Movie.find(params[:id])
    render("movies/edit_form.html.erb")
  end

  def update_movie
    @movie= Movie.find(params[:id])
    @movie.title= params[:title]
    @movie.year= params[:year]
    @movie.duration= params[:duration]
    @movie.description= params[:description]
    @movie.image_url= params[:image_url]
    @movie.save
    redirect_to("/index")
  end

def delete_movie
    @movie= Movie.find(params[:id])
    @movie.destroy
    redirect_to("/index")

end

end
