class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :type, null: false
      t.string :comment, limit: 2048

      t.timestamps
    end
  end
end
