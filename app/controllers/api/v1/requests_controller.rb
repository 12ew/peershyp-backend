class Api::V1::RequestsController < ApplicationController
  before_action :find_request, only: [:update]

  def index
    @requests = Request.where(expat_id: params[:expat_id])
    render json: @requests
  end

  def show
    @request = Request.find(params[:id])
    render json: @request
  end

  def create
    @request = Request.new(request_params)
    # byebug
    if @request.save
      render json: @request, status: :accepted
    else
      render json: { errors: @request.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @request.update(request_params)
    if @request.save
      render json: @request, status: :accepted
    else
      render json: { errors: @request.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def request_params
    params.permit(:item_name, :departing_city, :destination_city, :weight, :description, :status, :expat_id, :trip_id, :item_cost, :item_url, :quantity)
  end

  def find_request
    @request = Request.find(params[:id])
  end

end
