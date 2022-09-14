class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)

    if @passenger.save
      PassengerMailer.with(passenger: @passenger).confirmation_email.deliver_now!
    end
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :email, :booking_id)
  end
end
