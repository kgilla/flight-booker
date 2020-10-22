class FlightsController < ApplicationController
  def home 
    @airports = Airport.all.map{ |a| [ a.location, a.id] }
  end

  def search
    if params[:to] === params[:from]
      flash[:danger] = "Please enter two different airports."
      redirect_to root_url
    else
      @totalFlights = Flight.where(from_airport: params[:from], 
        to_airport_id: params[:to])
      @flights = Flight.where(from_airport: params[:from], 
        to_airport_id: params[:to]).order(params[:option] || :date).paginate(:page => params[:page], :per_page => 10)
      @params = {
        to: params[:to],
        from: params[:from],
        passengers: params[:passengers],
        option: params[:option]
      }
    end
  end
end
