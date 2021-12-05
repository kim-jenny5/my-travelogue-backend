class TripsController < ApplicationController
    def index
        trips = Trip.all
        render json: trips
    end

    def create
        trip = Trip.new(trip_params)
        if trip.save
            render json: trip
        else
            render json: {error: "Trip could not be created. Please try again."}
        end

    end

    private

    def trip_params
        params.require(:trip).permit(:trip_name, :start_date, :end_date, :user_id)
    end
end
