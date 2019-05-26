class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map {|a| [a.code, a.id]}
    @flight_options = Flight.all.map {|f| [f.depart_at, f.id]}
  end
end
