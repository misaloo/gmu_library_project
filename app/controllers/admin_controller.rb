class AdminController < ApplicationController 
  def index
  	@book = Book.all
  end
end
