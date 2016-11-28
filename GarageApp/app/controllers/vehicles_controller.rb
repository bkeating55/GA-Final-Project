class VehiclesController < ApplicationController
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
