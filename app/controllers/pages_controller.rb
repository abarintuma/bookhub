class PagesController < ApplicationController
  def home
    @recent_books = Book.order(created_at: :desc).limit(3)
  end

  def about
  end
end