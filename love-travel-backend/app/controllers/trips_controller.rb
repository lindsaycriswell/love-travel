class TripsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @trips = @user.trips
    render json: @trips
  end

  def create
    @trip = Trip.create(start_date: params["start_date"], end_date: params["end_date"], location_id: params["location_id"], notes: params["notes"], user_id: params["user_id"])
    if @trip
      render json: @trip
    end
  end

  def update
    @trip = Trip.find_by(id: params[:trip_id])
    @trip.update(start_date: params["start_date"], end_date: params["end_date"], notes: params["notes"])
    render json: @trip
  end

  def destroy
    @trip = Trip.find_by(id: params[:trip_id])
    @trip.destroy
    render json: {message:"Zap! Trip deleted"}, status: 200
  end

end
