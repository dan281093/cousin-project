class ServicesController < ApplicationController
  def index
    @services = Service.all

  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(services_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def services_params
    params.require(:service).permit(:description)
  end
end
