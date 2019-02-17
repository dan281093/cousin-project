class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @services = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @services = Service.new(services_params)
    if @services.save
      redirect_to my_services_path
    else
      render :new
    end
  end

  private

  def services_params
    params.require(:service).permit(:name, :description)
  end
end
