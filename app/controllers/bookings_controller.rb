class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(passenger_params)
    if @booking.save
      redirect_to booking_path(@booking.id)
    else 
      redirect_to root_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
    @passengers = @booking.passengers.all
  end

  private

    def passenger_params
      params.require(:booking).permit(:flight_id, 
        passengers_attributes: [:name, :email])
    end
end
