class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end
  
  def create
    activity = Activity.new(params[:activity])
    if activity.save
      flash[:notice] = "New activity saved."
      redirect_to activities_path
    else 
      @message = "did not work"
      render 'new'
    end
  end
  
  def update
    @activity = Activity.find(params[:id])

    if @activity.update_attributes(params[:activity])
        redirect_to @activity      
      else
        render "edit"
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    flash[:notice] = "Activity deleted."

    redirect_to activities_path
  end
  
end











