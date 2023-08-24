class AddNewColumnToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :main_image, :json
  end
end
