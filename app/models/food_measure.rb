class FoodMeasure < ApplicationRecord
  belongs_to :food
  belongs_to :measure
end
