class CreatePropertyDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :property_details do |t|
      t.integer :area
      t.string :location
      t.integer :bedrooms
      

      t.timestamps
    end
  end
end
