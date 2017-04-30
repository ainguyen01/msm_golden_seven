class MoviesController < ApplicationController

def index
  @movies= Movie.all
  render("/index.html.erb")
end

end
