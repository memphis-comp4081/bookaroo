class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    # Automagically render authors/index.html.erb
  end

  def new
    @author = Author.new
    # Automagically render authors/new.html.erb
  end

  def create
    Author.create!(params.require(:author).permit(:first_name, :last_name, :year_born))
    redirect_to authors_url
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_url
  end

end
