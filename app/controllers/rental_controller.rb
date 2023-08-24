class RentalController < ApplicationController
    before_action :authenticate_user!
    def index
        @rentals = Rental.all

    end
    def new

    end

    def create
        if params[:property_type] == 'Property'
            property = Rental.new(property_params)
            if property.save
                puts "Property saved successfully"
                property.create_property_detail(property_params)
                render :new
            end
        elsif params[:property_type] == 'Vehicle'
            vehicle = Rental.create(property_params)
            vehicle.create_property_detail(property_params)
        end

    end
    def show
        p=Rental.find_by(id: params[:id])
        if p.type == "Property"
            @detail = p.property_detail
            puts "rrrrrr"
            puts @detail
            puts "hhhhhhhhhhh"
        elsif p.type == "Vehicle"
            @detail= p.vehicle_detail
           
        end


    end

    private
  def property_params
    params.require(:property).permit(:title, :description, :duration, :price, :area, :location, :bedrooms, :main_image, :capacity, :engine, :time, :model, :wheel, :color, :mileage, :main_image)
  end
end

