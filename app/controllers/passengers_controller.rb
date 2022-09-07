class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :email, :booking_id)
  end
end
