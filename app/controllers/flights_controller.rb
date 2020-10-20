class FlightsController < ApplicationController
  def home 
    @airports = Airport.all.map{ |a| [ a.location, a.id] }
  end

  def search
    if params[:to] === params[:from]
      flash[:danger] = "Please enter two different airports."
      redirect_to root_url
    else
      @flights = []
      flights = Flight.where(from_airport: params[:from], 
        to_airport_id: params[:to]).order(params[:option] || :date)
      flights.each do |flight| 
        flight.price = flight.price * params[:passengers].to_i
        @flights << flight
      end
      @params = {
        to: params[:to],
        from: params[:from],
        passengers: params[:passengers],
        option: params[:option]
      }
    end
  end
end
