class TripsController < ApplicationController
    def index
        trips = Trip.all
        render json: trips
    end

    private

    def trip_params
        params.require(:trip).permit(:id, :name, :location, :start_date, :end_date, :user_id)
    end
end
