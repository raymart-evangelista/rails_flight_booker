class BookingsController < ApplicationController
  def new
    # receive flight_id and passenger number parameters
    @flight_id = params[:flight_id]
    @passenger_amt = params[:passenger_amt]
  end

  def create

  end
end
