class FlightsController < ApplicationController

  def index
    # @flights = Flight.all

    if params.key?(:month) && params.key?(:day) && params.key?(:year)
      if params[:departure_code] == params[:arrival_code]
        flash.now[:alert] = "Departure airport and arrival airport cannot be the same."
      else
        @selected_date = Date.civil(params[:year].to_i, params[:month].to_i, params[:day].to_i)
        # do the search
        @departing_airport = Airport.find_by_id(params[:departure_code])
        @arriving_airport = Airport.find_by_id(params[:arrival_code])
        @passenger_amt = params[:passenger_amt]
          # find flights with departing airport and arriving airport
        @path = Flight.where(departure_id: @departing_airport.id)
                            .where(arrival_id: @arriving_airport.id)
                            .where(start_datetime: @selected_date.all_day)
        if @path.exists?
          # flash.now[:notice] = "Flight exists! There are #{@path.count} flights."
          # binding.pry
          # check selected date
        else
          # flash.now[:alert] = "That flight does not exist."
        end
      end
    else
      flash.now[:alert] = "An error has occurred. Please try again."
    end
  end

  def new
    @flight = Flight.new
  end
end
