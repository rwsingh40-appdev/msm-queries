class ActorsController < ApplicationController

  def index
    @actors_array = Actor.all
    render({:template => "actors_templates/index.html.erb"})
  end

  def actor_details
    @actors_array = Actor.all
    @actor_id = params.fetch("actor_id")
    @target_actor = Actor.where({:id => @actor_id}).first
    @target_characters = Character.where({:actor_id => @actor_id})
    # @target_movie_ids = @target_characters.map_relation_to_array(:movie_id)
    # @target_movies = Movie.where({:id => @target_movie_ids})
    render({:template => "/actors_templates/details.html.erb"})
  end


end
