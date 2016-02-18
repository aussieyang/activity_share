class ActivitiesController < ApplicationController

  def index
    if params[:location].nil?
      @activities = Activity.all
    else
      @activities = Activity.near(params[:location], 30)
    end
    render :index, layout: 'frontend'
  end

  def show

  end
end
