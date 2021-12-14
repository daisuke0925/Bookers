class BooksController < ApplicationController
 def show
  @book = Book.find(params[:id])
 end

 def index
  @book = Book.new
 end

 def new
 end

 def create
   book = Book.new(book_params)
   book.save
   redirect_to books_path
 end

 def edit
  @book = Book.find(params[:id])
 end

 private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end

