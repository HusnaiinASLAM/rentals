class PropertyController < ApplicationController
    def index

    end
    def new
        @property = Property.new
    end
    def create
        puts ("following is user id")
        property = Property.create(title: params[:title], description: params[:description], duration: params[:duration], price: params[:price],user_id: current_user.id, main_image: params[:main_image])
       
        
        redirect_to rental_index_path


    end


end