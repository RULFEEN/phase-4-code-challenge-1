class RestaurantPizza < ApplicationRecord
    validates :price, inclusion: {in: (1..30)}

    belongs_to :restaurant
    belongs_to :pizza
end
