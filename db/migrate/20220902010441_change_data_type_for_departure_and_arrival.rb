class ChangeDataTypeForDepartureAndArrival < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_id
    remove_column :flights, :arrival_id
    add_column :flights, :departure_id, :integer
    add_column :flights, :arrival_id, :integer
  end
end
