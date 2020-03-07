class Food < ApplicationRecord
  belongs_to :user
  has_many :food_measures, class_name: 'FoodMeasure', inverse_of: :food
  has_many :measures, through: :food_measures
  accepts_nested_attributes_for :food_measures, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true

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
