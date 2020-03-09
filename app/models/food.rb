class Food < ApplicationRecord
  belongs_to :user
  has_many :food_measures, class_name: 'FoodMeasure', inverse_of: :food
  has_many :measures, through: :food_measures
  has_many :meal_foods, class_name: 'MealFood', inverse_of: :food
  has_many :meals, through: :meal_foods
  accepts_nested_attributes_for :food_measures, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true

  before_update do |food|
    if food.meals.count > 0
      errors.add(:base, 'Este alimento está sendo usado por uma refeição. Não será possível altera-lo. Tente criar um novo alimento.')
      throw(:abort)
    end
  end

  scope :with_user_id, -> (user_id){
    unless user_id.blank?
      where(user_id: user_id)
    end
  }

  scope :with_name, -> (subString){
    unless subString.blank?
      where("LOWER(name) LIKE ?", "#{subString.downcase}%")
    end
  }
end
