class AuthorsController < ApplicationController

  before_action :authenticate_user! #, except: [:index, :new]

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

  def edit
    @author = Author.find(params[:id])
    # Automagically render authors/edit.html.erb
  end

  def update
    @author = Author.find(params[:id])
    @author.update(params.require(:author).permit(:first_name, :last_name, :year_born))
    redirect_to authors_url
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_url
  end

end
