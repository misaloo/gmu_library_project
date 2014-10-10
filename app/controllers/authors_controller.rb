
class AuthorsController < ApplicationController
  def index
  	@authors = Author.all
  end

  def new
     @author = Author.new
  end

  def create
     @author = Author.new(author_params)
     @author.save
     redirect_to @author
  end

  private

  def author_params
     params.require(:author).permit(:name, :dob, :nationality, :awards, :biography, :image_url)
  end	

end
