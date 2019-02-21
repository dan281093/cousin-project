class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_service, only: [:new, :create]

  def index
  end

  def new
  @picture = {
  "Neighborhood" => "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550666525/Neighborhoods.jpg",
  "Trips" => "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550666525/Trips.jpg",
  "Government Departments" => "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550666525/Government%20Departments.jpg",
  "Health and Diet" => "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550666524/Health%20and%20Diet.jpg",
  "Forms" => "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550666524/Forms.jpg"
  }
  @booking = Booking.new
  end

  def update
    @booking.update(booking_params)
    redirect_to my_services_path
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
    params.require(:booking).permit(:description, :time, :status)
  end
end
