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
    activity = Activity.new(params["activity"])
    if activity.save
      redirect_to "/activities/index"
    else 
      @message = "did not work"
    end
  end
  
  def update
    @activity = Activity.find(params[:id])

    respond_to do |format|
      if @activity.update_attributes(params[:activity])
        format.html { redirect_to @user, notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    end
  
end
