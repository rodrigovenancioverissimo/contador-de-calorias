users = [
    {email: 'admin@admin', name: 'Administrador', password: '123456', height: 170, weight: 62, date_of_birth: '2000-01-01'},
    {email: 'user@user', name: 'Usuario', password: '123456', height: 160, weight: 42, date_of_birth: '2002-01-01'},
]
User.create(users)

measures = [
    {name: 'Escumadeira'},
    {name: 'Xicara'},
    {name: 'Colher de sopa'},
    {name: 'Unidade'},
    {name: 'Fatia'},
]
Measure.create(measures)

foods = [
    {name: "Arroz", grams: "100", calories:"128", carbohydrates:"28.1", proteins:"2.5", total_fats:"0.2", satured_fats:"0.05", dietary_fiber:"1.6", sodium_in_mg:"1", user_id:"1", food_measures_attributes:{"1":{measure_id:"1", grams:"30"}, "2":{measure_id:"2", grams:"200"}, "3":{measure_id:"3", grams:"25"}}},
    {name: "Pão francês", grams: "40", calories:"150", carbohydrates:"29.3", proteins:"4", total_fats:"1.55", satured_fats:"0.5", dietary_fiber:"1.15", sodium_in_mg:"324", user_id:"1", food_measures_attributes:{"1":{measure_id:"4", grams:"40"}, "2":{measure_id:"5", grams:"15"}}},
]
Food.create(foods)

meals = [
    {meal_type:"Almoço", comment:"", meal_foods_attributes:{"1":{food_id:"1"}}},
    {meal_type:"Café da manhã", comment:"", meal_foods_attributes:{"1":{food_id:"2"}}},
]
Meal.create(meals)