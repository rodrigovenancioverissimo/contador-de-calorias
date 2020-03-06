class Food < ApplicationRecord
  belongs_to :user
  has_many :food_measures, class_name: 'Measure', inverse_of: :user
  accepts_nested_attributes_for :food_measures, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
end
