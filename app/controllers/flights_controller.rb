class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { |a| [a.code] }
    # @airport_options = Airport.all.map { |a| [a.code] }
    # @airport_options = Airport.distinct.pluck(:code)
    @year_options = Flight.all.map { |f| [f.start_datetime.year] }.uniq
    @day_options = Flight.all.map { |f| [f.start_datetime.day] }.uniq
    @month_options = Flight.all.map { |f| [f.start_datetime.month] }.uniq
    # @flight_dates = Flight.distinct.pluck(:start_datetime)
    # @flight_dates = Flight.all.order("start_datetime").distinct.pluck(:start_datetime)
    # @flight_dates = Flight.all.map { |f| [f.start_datetime, f.id] }
  end

  def new
    @flight = Flight.new
  end
end
