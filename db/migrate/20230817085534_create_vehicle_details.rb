class CreateVehicleDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_details do |t|
      t.integer :capacity
      t.integer :engine
      t.string :time
      t.integer :model
      t.integer :wheel
      t.string :color
      t.integer :mileage

      t.timestamps
    end
  end
end
