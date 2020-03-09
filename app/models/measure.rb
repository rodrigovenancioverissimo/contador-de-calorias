class Measure < ApplicationRecord
  has_many :food_measures
  has_many :foods, through: :food_measures

  before_update do |measure|
    foodsIds = measure.food_measures.pluck(:food_id)

    if MealFood.where(food_id: foodsIds).count > 0
      errors.add(:base, 'Esta medida está sendo usada por um alimento que por sua vez está sendo usado por uma refeição. Não será possível altera-lo.')
      throw(:abort)
    end
  end
end
