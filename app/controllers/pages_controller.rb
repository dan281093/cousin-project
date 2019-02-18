class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @service = Service.new
  end

  def my_services
    @user = current_user
    @services = @user.services
  end

  def my_bookings
  end
end
