class BooksController < ApplicationController
 def show
 end

 def index
 end

 def new
  @book = book.new
 end

 def create
   book = Book.new(book_params)
   book.save
 end

 def edit
 end

 private
  def book_params
    params.permit(:title, :body)
  end


end

