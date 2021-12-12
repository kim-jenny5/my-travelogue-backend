class PlacesController < ApplicationController
    def create
        place = Place.new(place_params)

        if place.save
            render json: place
        else
            if place.errors.messages
                render json: {error: place.errors.messages}
            else
                render json: {error: "Place could not be added. Please try again."}
            end
        end
    end

    private

    def place_params
        params.require(:place).permit(:place_name, :trip_id)
    end
end
