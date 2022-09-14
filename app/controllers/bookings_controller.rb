class BookingsController < ApplicationController
  def new
    # receive flight_id and passenger number parameters
    @flight_id = params[:flight_id]
    @passenger_amt = params[:passenger_amt].to_i

    @booking = Booking.new
    @passenger_amt.times { @booking.passengers.build }
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    # @booking = Flight.find(id: @flight_id).bookings.build(booking_params)
    @booking = Booking.new(booking_params)

    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.confirmation_email(passenger).deliver_now!
      end
      flash[:notice] = "Flight booked successfully"
      redirect_to @booking
    else
      flash[:alert] = "Something went wrong"
      puts @booking.errors.full_messages
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_amt,
                                    passengers_attributes: [:id, :name, :email])
  end
end
