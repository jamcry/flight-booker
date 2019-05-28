class BookingsController < ApplicationController
  
  def new
    @flight = Flight.find(flight_params[:flight_id])
    @num_of_passengers = params[:num_of_passengers].to_i
    @booking = Booking.new
    @num_of_passengers.times { @booking.tickets.build.passenger = Passenger.new }
  end

  def create
    @flight = Flight.find(params[:booking][:flight_id])
    @booking = Booking.new(flight: @flight)
    4.times { @booking.tickets.build(passenger: 
                    Passenger.new(
                        name: params[:booking][:tickets_attributes]["0"][:passenger_attributes][:name]))}
    if @booking.save
      flash[:success] = "CREATED"
      redirect_to root_url
    else
      render 'new', params: {flight_id: @flight.id}
    end
  end


  def show
  end

  private
  
      def flight_params
        params.permit(:flight_id)
      end

end
