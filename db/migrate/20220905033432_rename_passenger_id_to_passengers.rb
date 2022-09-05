class RenamePassengerIdToPassengers < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :passenger_id, :passenger_amt
  end
end
