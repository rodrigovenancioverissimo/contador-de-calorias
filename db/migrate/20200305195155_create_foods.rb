class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false, limit: 128
      t.integer :grams
      t.integer :calories
      t.float :carbohydrates
      t.float :proteins
      t.float :total_fats
      t.float :satured_fats
      t.float :dietary_fiber
      t.float :sodium_in_mg
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
