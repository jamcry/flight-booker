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
    params[:booking][:tickets_attributes].each do |i,attrs|
      attrs.each do |i2,attrs2|
        new_passenger = Passenger.new(name: attrs2[:name], email: attrs2[:email])
        @booking.tickets.build(passenger: new_passenger)
      end
    end
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

     # def passenger_params(i)
     #   {name: params[:booking][:tickets_attributes]["#{i}"][:passenger_attributes][:name],
     #     email: params[:booking][:tickets_attributes]["#{i}"][:passenger_attributes][:email]}
     # end
end
