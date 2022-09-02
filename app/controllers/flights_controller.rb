class FlightsController < ApplicationController
  def index
    # @flights = Flight.all
    if params.key?(:month) && params.key?(:day) && params.key?(:year)
      if params[:departure_code] == params[:arrival_code]
        flash.now[:alert] = "Departure airport and arrival airport cannot be the same."
      else
        @selected_date = Date.civil(params[:year].to_i, params[:month].to_i, params[:day].to_i)
      end
    end
  end

  def new
    @flight = Flight.new
  end
end
