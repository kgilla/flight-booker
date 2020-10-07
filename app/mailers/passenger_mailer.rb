class PassengerMailer < ApplicationMailer
  
  def thank_you_email
    @booking = params[:booking]
    @flight = @booking.flight
    passengers = @booking.passengers.all
    passengers.each do |passenger|
      @passenger = passenger
      mail(to: @passenger.email, 
        subject: "Thanks For Booking With FlightBooker")
    end
  end
end
