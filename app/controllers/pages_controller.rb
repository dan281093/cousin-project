class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def my_services
    @user = current_user
    @services = @user.services
  end

  def my_bookings
    @my_bookings = Booking.where(user_id: current_user.id)
  end
end
