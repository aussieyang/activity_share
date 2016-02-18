class Api::ActivitiesController < ApplicationController
    def index
    @activites = Activity.where(params[:location])

    render json: @activites, status: 200
  end


  def create
    @activity = activity.new
    @activity.name = params[:name]

    @activity.save
    render json: @activities, status: 200
  end

  def show
     @activity = Activity.find(params[:id])
     render json: @activity, status: 200
  end

end