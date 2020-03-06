class CreateFoodMeasures < ActiveRecord::Migration[5.0]
  def change
    create_table :food_measures do |t|
      t.references :food, foreign_key: true
      t.references :measure, foreign_key: true

      t.timestamps
    end
  end
end
