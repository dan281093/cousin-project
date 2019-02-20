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
    ## FIX THIS ABOVE
  end

  def my_bookings
    @my_bookings = current_user.bookings
  end

  def my_profile
    @my_profile = current_user
  end

  private

  def set_params
    params.require(:results).permit(:category)
  end
end
