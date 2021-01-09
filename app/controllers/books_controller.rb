class BooksController < ApplicationController
  def index
    
  end

  def show
  end

  def books
  end

  def new
    
  end

  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to books_path
      else
        render :show
      end
  end

  def edit

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
    params.require(:book).permit(:title, :body)
  end

end
