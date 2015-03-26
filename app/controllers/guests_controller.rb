class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
    @reservations = Reservation.all
  end

  def edit
    @guest = Guest.find(params[:id])
    @reservations = Reservation.all
  end
  
  def create
    guest = Guest.new(params[:guest])

    if guest.save
      flash[:notice] = "New guest saved."
      redirect_to guests_path
    else 
      @message = "Guest was not saved."
      render 'new'
    end
  end

  def update
    @guest = Guest.find(params[:id])

    if @guest.update_attributes(params[:guest])
        redirect_to @guest      
      else
        render "edit"
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    flash[:notice] = "Guest deleted."

    redirect_to guests_path
  end
  
end