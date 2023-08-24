class Property < Rental
    has_one :property_detail
    belongs_to :user
    has_one_attached :main_image
end
