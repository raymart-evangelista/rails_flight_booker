class Flight < ApplicationRecord
  belongs_to :departing_airport, primary_key: :id, foreign_key: :departure_id, class_name: 'Airport'
  belongs_to :arriving_airport, primary_key: :id, foreign_key: :arrival_id, class_name: 'Airport'

  has_many :bookings
  has_many :passengers, through: :bookings

  def flight_path_with_details
    "#{departing_airport.code} -> #{arriving_airport.code}, #{start_datetime.strftime("%Y-%m-%d %H:%M %p")}, #{duration.inspect}"
  end
end
