class VehiclesController < ApplicationController
  before_filter :get_garage

  def get_garage
       @garage = Garage.find(params[:garage_id])
  end

  def index
    @garages= Garage.all
    @vehicles = Vehicle.all
  end

  def show
    @garage = Garage.find(params[:garage_id])
    @vehicle = @garage.vehicles.find(params[:id])
  end

  def create
    @garage = Garage.find(params[:garage_id])
    @vehicle = @garage.vehicles.create(vehicle_params)
    redirect_to garage_path(@garage)
  end

  def destroy
    @garage = Garage.find(params[:garage_id])
    @vehicle = @garage.vehicles.find(params[:id])
    @vehicle.destroy

    redirect_to garage_path(@garage)
  end

  private
    def vehicle_params
      params.require(:vehicle).permit(:make, :model, :year)
  end
end
