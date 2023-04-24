class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    

    render({:template => "directors_templates/index.html.erb"})
  end

  def director_details
    render({:template => "directors_templates/details.html.erb"})
  end

  def director_eldest
    array = Director.all
    eldest = array.where({:dob => array.minimum(:dob)})
    eldest = eldest[0]
    @eldest_name = eldest.name
    @eldest_dob = eldest.dob
    render({:template => "directors_templates/eldest.html.erb"})
  end

end

  
