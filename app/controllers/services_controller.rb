class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :destroy]
  def index
    @services = Service.all
    #first get all the results with a category
    #then filter for the ones where(location: 'location')
     Service.search_by_category_and_description("#{params:query}")
  end

  def show
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

  def destroy
    @service.destroy
    redirect_to services_path
  end

  def update
    @service = set_service
    @service.update(services_params)
    redirect_to service_path
  end

  def edit
    set_service
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def services_params
    params.require(:service).permit(:name, :description, :category, :price)
  end
end
