class Meal < ApplicationRecord
  has_many :meal_foods, class_name: 'MealFood', inverse_of: :meal
  has_many :foods, through: :meal_foods
  accepts_nested_attributes_for :meal_foods, reject_if: :all_blank, allow_destroy: true

  enum meal_type: {
      'Café da manhã': 'Breakfast',
      'Lanche da manhã': 'Morning snack',
      'Almoço': 'Lunch',
      'Lanche da tarde': 'Afternoon snack',
      'Jantar': 'Dinner'
  }
end