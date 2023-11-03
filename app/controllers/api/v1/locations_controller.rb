class Api::V1::LocationsController < Api::V1::BaseController
  before_action :set_location, only: [:show]

  # GET /api/v1/locations
  def index
    @locations = Location.all
    render json: @locations
  end

  # GET /api/v1/locations/:id
  def show
    render json: @location
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end
end
