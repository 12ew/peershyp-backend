class Api::V1::TripsController < ApplicationController
  before_action :find_trip, only: [:update]

  def index
    @trips = Trip.all
    render json: @trips
  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def trip_params
    params.permit(:departure_city, :destination_city, :depart_date, :arrival_date, :airline, :flight_num, :traveler_id)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end

end
