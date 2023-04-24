class CharactersController < ApplicationController

  def index
    render({:template => "characters_templates/index.html.erb"})
  end

end
