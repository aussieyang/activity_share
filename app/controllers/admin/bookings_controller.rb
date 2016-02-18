class Admin::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
  end

  def create
    @booking = Booking.new
    @booking.user_id = session[:user_id]
    @booking.activity_id = params[:activity_id]
    @booking.save
    redirect_to :back
  end

  def show
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.name = params[:name]
    @booking.save
    redirect_to '/'
  end

  def delete
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to '/'
  end
end
