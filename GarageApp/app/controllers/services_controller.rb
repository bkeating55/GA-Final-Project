class ServicesController < ApplicationController
  def index

    @vehicles = Vehicle.all
    @services = Service.all
end

def new

  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = Service.new
end

def show

  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = @vehicle.services.find(service_params)
end



def create

  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = @vehicle.services.create(service_params)
  redirect_to vehicle_services_path
  end
end

def destroy

  @vehicle = Vehicle.find(params[:vehicle_id])
  @service = @vehicle.services.find(params[:id])
  @service.destroy

  redirect_to garage_vehicle_service_path
  end


private
  def service_params
    params.require(:service).permit(:service, :date, :mileage)
  end
