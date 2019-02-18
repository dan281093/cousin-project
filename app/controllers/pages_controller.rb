class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @service = Service.new
  end

  def my_services
    # maybe delete this part - who is using this?
    @user = current_user
    @services = @user.services
    # delete the above

    @my_services = Service.where(user_id: current_user.id)
  end

  def my_bookings
    @my_bookings = Booking.where(user_id: current_user.id)
  end
end
