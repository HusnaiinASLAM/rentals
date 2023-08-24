class AddVehicleref < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicle_details, :vehicle , foreign_key: { to_table: :rentals }
  end
end
