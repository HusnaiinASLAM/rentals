class AddId < ActiveRecord::Migration[7.0]
  def change
    add_reference :property_details, :property,  foreign_key: { to_table: :rentals }
  end
end
