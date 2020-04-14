class FlightsController < ApplicationController
  
  def index
    @airports = Airport.all.map{ |a| [ a.location, a.id] }
    @flights = Flight.where(from_airport: params[:from], 
      to_airport_id: params[:to])
  end
end
