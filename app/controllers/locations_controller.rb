require 'json'

class LocationsController < ApplicationController
    # GET /locations
    def index
        @locations = Location.all
        render json: @locations
    end

    # GET /locations/{id}
    def show
        @location = Location.find(params[:id])
        render json: @location
    end

    # POST /locations
    def create
        @location = Location.new(location_params)
        if(@location.save)
            render json: @location, status: :created, location: @location
        else
            render json: @location.errors, status: :unprocessable_entity
        end
    end
        
end
