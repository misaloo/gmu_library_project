class BooksController < ApplicationController
  before_action :set_book, only: [ :show, :edit, :update, :destroy ]
#  before_action :validated_admin_action, only: [ :create, :edit, :update, :destroy ]
  before_action :session_access, only: [ :create, :edit, :update, :destroy ]


  def set_book
    @book = Book.find(params[:id])
  end

  def index
  	@book = Book.all
    @books = Book.order(:title).page(params[:page])
  end

  def show
    @user_book_reservations = Reservation.where("book_id=? and user_id=?", @book.id, current_user).all
#   
    if @user_book_reservations.nil?
      @user_reservation_count = 0
    else
      @user_reservation_count = @user_book_reservations.count
    end
  end

  def new
    @book=Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "#{@book.title} was created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "#{@book.title} was updated."
    else
      render :new
    end
  end

  def destroy
    @book.destroy
    redirect_to @book, notice: "#{@book.title} was deleted."
  end

  def search
     @books = Book.search params[:search]   
  end
  
  private


  def book_params
    params.require(:book).permit(:title,:isbn,:genre,:abstract,:author_id,:pages,:image_cover_url,:published_on,:total_in_library)
  end

  def session_access
#    if session[:admin] = false
#      redirect_to books_url
#    else
#    end
  end

  def set_author
     @author = Author.find(params[:author_id])
  end  
end