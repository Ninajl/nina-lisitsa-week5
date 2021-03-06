class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      redirect :new
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
def location_params
  params.require(:location).permit(:name, :address, :zipcode)
end

end
