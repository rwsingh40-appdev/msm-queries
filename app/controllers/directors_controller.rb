class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({:template => "directors_templates/index.html.erb"})
  end

  def director_details
    id = params.fetch("director_id")
    @target_director = Director.where({:id => id}).first
    @director_movies = Movie.where({:director_id => id})
    render({:template => "directors_templates/details.html.erb"})
  end

  def director_eldest
    array = Director.all
    eldest = array.where({:dob => array.minimum(:dob)})
    eldest = eldest[0]
    @eldest_id = eldest.id
    @eldest_name = eldest.name
    @eldest_dob = eldest.dob.strftime("%B %e, %Y")
    render({:template => "directors_templates/eldest.html.erb"})
  end
  
  def director_youngest
    array = Director.all
    youngest = array.where({:dob => array.maximum(:dob)})
    youngest = youngest[0]
    @youngest_id = youngest.id
    @youngest_name = youngest.name
    @youngest_dob = youngest.dob.strftime("%B %e, %Y")
    render({:template => "directors_templates/youngest.html.erb"})
  end

end

  
