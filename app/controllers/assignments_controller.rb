class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
    @guests = Guest.all
    @activities = Activity.all
    @reservations = Reservation.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
		@guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
    @reservations = Reservation.all
  end

# POST /assignments
# Assign an activity to a guest
  
  def create
		@activities = params[:guest][:activity_ids]
    assignment = Assignment.new(params[:guest_id], params[:activity_id])

    @activities.each do |a|
      if a != ""
      @assignment = Assignment.create(:guest_id => params[:assignments][:guest_id], :activity_id => a)
    # assigned_activity = Assignment.create(:guest_id => params[:guest_id], :activity_id => params[:activity_id])
      end
    end

    if @assignment.save
      flash[:notice] = "Activity assigned."
      redirect_to guests_path
    else 
      @message = "Activity not assigned."
    end

      # redirect_to guests_path
  end

  
  # def update
  #   @assignment = Guest.find(params[:id])

  #   if @guest.update_attributes(params[:guest])
  #       redirect_to @guest      
  #     else
  #       render "edit"
  #   end
  # end

  
  # def destroy
  #   @guest = Guest.find(params[:id])
  #   @guest.destroy

  #   flash[:notice] = "Guest deleted."

  #   redirect_to guests_path
  # end
  
end