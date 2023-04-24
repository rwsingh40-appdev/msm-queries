class ActorsController < ApplicationController

  def index
    render({:template => "actors_templates/index.html.erb"})
  end

end
