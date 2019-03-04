# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
