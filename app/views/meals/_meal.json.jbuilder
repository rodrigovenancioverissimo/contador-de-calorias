json.extract! meal, :id, :meal_type, :comment, :created_at, :updated_at, :foods, :valor_nutricional

json.url meal_url(meal, format: :json)
