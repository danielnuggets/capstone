class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.integer :cost_of_living
      t.text :weather
      t.integer :walk_score
      t.integer :air_quality
      t.string :image

      t.timestamps
    end
  end
end
