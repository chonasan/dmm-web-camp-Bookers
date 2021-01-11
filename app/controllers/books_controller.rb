class BooksController < ApplicationController
  
  def top
  end
  
  def books
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  
  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(params[:id])
      if @book.save
        redirect_to book_path(book.id)
      end
  end


  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

   private

  def book_params
    params. permit(:title, :body)
  end

end
