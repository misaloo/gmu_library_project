class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]

  def index
  	@authors = Author.all
  end

  def new
     @author = Author.new
  end

  def create
     @author = Author.new(author_params)
     if @author.save    
        redirect_to @author, notice: "#{@author.name} was created!"
     else
        render :new
     end      
  end

  def show
  end

  def edit
    #@author = Author.find(params[:id])
  end
    
  def update
      if @author.update(author_params)
         redirect_to @author, notice: "#{@author.name} was updated!"
      else
         render :new
    end
  end

  private

  def author_params
     params.require(:author).permit(:name, :dob, :nationality, :awards, :biography, :image_url)
  end	

  def set_author
     @author = Author.find(params[:id])
  end

end
