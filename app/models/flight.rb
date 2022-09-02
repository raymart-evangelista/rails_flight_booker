class Flight < ApplicationRecord
  belongs_to :departing_airport, primary_key: :id, foreign_key: :departure_id, class_name: 'Airport'
  belongs_to :arriving_airport, primary_key: :id, foreign_key: :arrival_id, class_name: 'Airport'
end
