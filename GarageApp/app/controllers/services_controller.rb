class ServicesController < ApplicationController
  def index
    @garages = Garage.all
    @vehicles = Vehicle.all
    @services = Service.all
end

def show
  @Garage = Garage.find(params[:garage_id])
  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = @vehicle.services.find(params[:id])
end

  def new
    @garage = Garage.find(params[:garage_id])
    @vehicle = Vehicle.find(params[:vehicle_id])
    @service = Service.new
  end



def create
  @garage = Garage.find(params[:garage_id])
  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = @vehicle.services.create(service_params)
  redirect_to garage_vehicle_services_path(@service)
  end
end

def destroy
  @garage = Garage.find(params[:garage_id])
  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = @vehicle.services.find(params[:id])
  @service.destroy

  redirect_to garage_vehicle_service_path
  end


private
  def service_params
    params.require(:service).permit(:service, :date, :mileage)
  end
