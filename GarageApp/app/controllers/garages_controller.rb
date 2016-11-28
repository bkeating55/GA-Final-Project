class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new
    @garage = Garage.new
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def create
    @garage = Garage.new(garage_params)

  if @garage.save
    redirect_to @garage
  else
    render 'new'
  end
end

  def update
    @garage = Garage.find(params[:id])

    if @garage.update(garage_params)
      redirect_to @garage
    else
      render 'edit'
    end
  end

  def destroy
    @garage = Garage.find(params[:id])
    @garage.destroy

    redirect_to garages_path
  end

  private
    def garage_params
      params.require(:garage).permit(:name)
  end
end
