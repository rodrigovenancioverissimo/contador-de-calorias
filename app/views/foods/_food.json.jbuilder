json.extract! food, :id, :name, :grams, :calories, :carbohydrates,
              :proteins, :total_fats, :satured_fats, :dietary_fiber,
              :sodium_in_mg, :user_id, :created_at, :updated_at, :measures
json.url food_url(food, format: :json)
