class ReservationsController < ApplicationController
  before_action :set_book, only: [ :create]

  def index
  	@reservations = Reservation.where("user_id=?", current_user).all
  end

  def show
  end

  def new
    @reservation = @book.reservations.new
  end
  
  def create

      currentTime = Time.zone.now
      @reservation = @book.reservations.new({:reserved_on => currentTime, :due_on => currentTime + 1.days, :user => current_user})
      if @reservation.save(current_user)
        redirect_to reservations_path(current_user), notice: @book.title + ' has been reserved'
      else
        redirect_to books_index_path(current_user), notice: 'Reservation failed.'
      end
  end

  def edit
  end

  def update
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    redirect_to reservations_path, notice: "#{reservation.book.title} has been returned"
  end

  def overdue
    @reservations = Reservation.where("due_on < ?", Time.zone.now).all
  end

private
  def set_book
    @book = Book.find(params[:book_id])
  end
end