class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def edit
  	@reservation = Reservation.find(params[:id])
  end
  
  def create
    reservation = Reservation.new(params[:reservation])
    if reservation.save
      flash[:notice] = "New reservation saved."
      redirect_to reservations_path
    else 
      @message = "did not work"
      render 'new'
    end
  end
  
  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(params[:reservation])
        redirect_to @reservation      
      else
        render "edit"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    flash[:notice] = "Reservation deleted."

    redirect_to reservations_path
  end
  
end