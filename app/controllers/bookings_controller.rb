class BookingsController < ApplicationController
  def new
    # receive flight_id and passenger number parameters
    @flight_id = params[:flight_id]
    @passenger_amt = params[:passenger_amt].to_i

    @booking = Booking.new
    @passenger_amt.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash.now[:notice] = "Flight booked successfully"
      # redirect_to @booking
    else
      flash.now[:alert] = "Something went wrong"
      #redirect_to root_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_amt,
                                    passengers_attributes: [:id, :name, :email])
  end
end
