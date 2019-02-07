class Api::V1::ExpatsController < ApplicationController
  before_action :find_expat, only: [:update]

  def index
    @expats = Expat.all
    render json: @expats
  end

  def show
    @expat = Expat.find(params[:id])
    render json: @expat
  end

  def create
    @expat = Expat.new(expat_params)
    if @expat.save
      render json: @expat, status: :accepted
    else
      render json: { errors: @expat.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @expat.update(expat_params)
    if @expat.save
      render json: @expat, status: :accepted
    else
      render json: { errors: @expat.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def expat_params
    params.permit(:name, :email, :password, :phone_number, :street, :city, :zip_code, :identification_num, :category)
  end

  def find_expat
    @expat = Expat.find(params[:id])
  end

end
