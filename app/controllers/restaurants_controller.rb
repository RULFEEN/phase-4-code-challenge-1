class RestaurantsController < ApplicationController
    
    def index
        render json: Restaurant.all, status: :ok
    end

    def show
        restaurant = Restaurant.find(params[:id])
        if restaurant
            render json: restaurant, status: :ok
        else
            render json: {"error": "Restaurant not found"}
        end
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        if restaurant
            restaurant.destroy
            head :no_content
        else
            render json: {"error": "Restaurant not found"}
        end
    end


end
