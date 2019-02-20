class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_service, only: [:new, :create]

  def index
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    @booking.save!
    redirect_to my_bookings_path

    # Also set price of the booking!
  end

  def destroy
    @booking.destroy
    redirect_back fallback_location: my_bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end

  def booking_params
    params.require(:booking).permit(:description, :time)
  end
end
