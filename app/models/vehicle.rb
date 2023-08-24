class Vehicle < Rental
    has_one :vehicle_detail
    belongs_to :user
    has_one_attached :main_image
end
