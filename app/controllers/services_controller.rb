class ServicesController < ApplicationController
  def index
    @services = Service.all

  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
    @service.user = current_user
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
    params.require(:service).permit(:name, :description, :category, :price)
  end
end
