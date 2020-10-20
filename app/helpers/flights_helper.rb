module FlightsHelper
  def priceAdjuster(flight, params)
    flight.price * params[:passengers].to_i
  end

  def endTime(flight)
    (flight.date + flight.duration.to_i * 60 * 60).strftime("%H:%M")
  end
end
