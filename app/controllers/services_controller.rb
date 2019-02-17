class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @services = service.find(params[:id])
  end
end
