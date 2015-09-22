class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    # Automagically render authors/index.html.erb
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_url
  end

end
