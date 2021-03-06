json.extract! restaurant, :id, :name, :description, :created_at, :updated_at
json.dishes(restaurant.dishes) do |dish|
  json.id dish.id
  json.name dish.name
  json.url dish_url(dish, format: :json)
end

json.url restaurant_url(restaurant, format: :json)
