class Admin::ActivitiesController < ApplicationController
  layout 'dashboard'

  def index
    @activities = Activity.all
    # @activities = Activity.near([:location], 10)
  end

  def new
    if logged_in?
    else
      redirect_to '/login'
    end
  end

  def create
    @activity = Activity.new
    @activity.title = params[:title]
    @activity.description = params[:description]
    @activity.start = DateTime.strptime(params[:date] + params[:time], '%Y-%m-%d%H:%M')
    @activity.location = params[:location]
    @activity.user_id = session[:user_id]
    @activity.save
    redirect_to '/admin/dashboard'
  end

  def show
    @activity = Activity.find(params[:id])
    @bookings = Booking.where(activity_id: params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.title = params[:title]
    @activity.description = params[:description]
    @activity.start = DateTime.strptime(params[:date] + params[:time], '%Y-%m-%d%H:%M')
    @activity.location = params[:location]
    @activity.user_id = session[:user_id]
    @activity.save
    redirect_to '/admin/dashboard'
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to '/admin/dashboard'
  end

  def hosting
    @activities = Activity.where(user_id: current_user.id)
  end

  def booked
    @bookings = Booking.where(user_id: current_user.id)
  end

end
