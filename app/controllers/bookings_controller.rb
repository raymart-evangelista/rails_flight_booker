class BookingsController < ApplicationController
  def new
    # receive flight_id and passenger number parameters
    @flight_id = params[:flight_id]
    @passenger_amt = params[:passenger_amt]

    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private
  
  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_amt,
      :passenger_attributes => [:id, :name, :email])
  end
end
