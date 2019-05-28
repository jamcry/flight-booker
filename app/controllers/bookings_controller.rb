class BookingsController < ApplicationController
  
  def new
    @flight = Flight.find_by(flight_params)
    @booking = Booking.new
    4.times { @booking.tickets.build.passenger = Passenger.new }
  end

  def show
  end

  private
  
      def flight_params
        params.permit(:booked_id)
      end
end
