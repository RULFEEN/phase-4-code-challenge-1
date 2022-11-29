class RestaurantPizzasController < ApplicationController
    wrap_parameters format: []

    def create
        respizza = RestaurantPizza.create(respizza_params)
        if respizza
            render json: respizza.pizza, status: :created
        else
            render json: {"errors": ["validation errors"]}
        end
    end

    private

    def respizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
