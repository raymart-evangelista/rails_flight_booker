class RenamePassengerAmtToPassengerId < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :passenger_amt, :passenger_id
  end
end
