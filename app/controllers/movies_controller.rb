class MoviesController < ApplicationController

  def index
    @movie_array = Movie.all
    render({:template => "movies_templates/index.html.erb"})
  end

  def movie_details
    @movie_id = params.fetch("movie_id")
    @target_movie = Movie.where({:id => @movie_id}).first
    @target_director = Director.where({:id => @target_movie.director_id}).first
    render({:template =>"movies_templates/details.html.erb"})
  end


end
