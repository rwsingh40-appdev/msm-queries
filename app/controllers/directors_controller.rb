class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    

    render({:template => "directors_templates/index.html.erb"})
  end

  def director_details
    render({:template => "directors_templates/details.html.erb"})
  end

end

  
