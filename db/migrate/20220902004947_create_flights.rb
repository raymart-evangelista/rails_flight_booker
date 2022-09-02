class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.text :departure_id
      t.text :arrival_id
      t.datetime :start_datetime
      t.interval :duration

      t.timestamps
    end
  end
end
