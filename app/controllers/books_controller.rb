class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @author = Author.find(params[:book][:author_id])
    @book = Book.new(params.require(:book).permit(:title, :year_published, :summary))
    @book.my_author = @author
    @book.save!
    redirect_to books_url
  end
end
