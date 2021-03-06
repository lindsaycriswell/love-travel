class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show]

  def index
    locations = Location.all
    render json: locations, status: 200
  end

  # def create
  #   location = Location.create(location_params)
  #   render json: location, status: 201
  # end
  #
  # def update
  #   @location.update(location_params)
  #   render json: @location, status: 200
  # end
  #
  # def destroy
  #   locationId = @location.id
  #   @location.destroy
  #   render json: {message:"Zap! Location deleted", locationId:locationId}
  # end

  def show
    render json: @location, status: 200
  end

  private
  # def location_params
  #   params.permit(:name, ETC)
  # end

  def set_location
    @location = Location.find(params[:id])
  end
end
