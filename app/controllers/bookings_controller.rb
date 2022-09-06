class BookingsController < ApplicationController
  def new
    # receive flight_id and passenger number parameters
    @flight_id = params[:flight_id]
    @passenger_amt = params[:passenger_amt]

    flash.now[:alert] = "flight_id: #{@flight_id}, passenger_amt: #{@passenger_amt}"
    # @booking = Booking.new
  end

  def create

  end
end
