class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    # Automagically render authors/index.html.erb
  end

end
