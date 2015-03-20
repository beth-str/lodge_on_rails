class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity_new = Activity.new({name: params[:name], person_limit: params[:person_limit]})
  end

  def edit
    @activity = Activity.find(params[:id])
  end
  
  def create
    activity = Activity.new(params[:activity])
    if activity.save
      redirect_to "/activities"
    else 
      @message = "did not work"
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

    redirect_to activities_path
  end
  
end











