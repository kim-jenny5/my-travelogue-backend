class User < ApplicationRecord
    has_secure_password

    has_many :trips

    validates :first_name, presence: {message: "First name field is empty."}
    validates :last_name, presence: {message: "Last name field is empty."}
    validates :email, uniqueness: {message: "This email is already registered."}, email: true

    def joined
        self.created_at.strftime("%B %e, %Y")
      end
    
    def upcoming_trips
        self.trips.select do |trip|
            trip.start_date >= Date.current
        end
    end
    
    def past_trips
        self.trips.select do |trip|
            trip.start_date < Date.current
        end    
    end

    def first_upcoming_trip
        dates = []

        upcoming_trips.each do |trip|
            dates << trip.start_date
        end

        upcoming_trips.find do |trip|
            trip.start_date === dates.min
        end
    end
end
