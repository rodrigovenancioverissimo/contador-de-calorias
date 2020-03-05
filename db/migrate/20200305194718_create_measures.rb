class CreateMeasures < ActiveRecord::Migration[5.0]
  def change
    create_table :measures do |t|
      t.string :name, null: false, limit: 128

      t.timestamps
    end
  end
end
