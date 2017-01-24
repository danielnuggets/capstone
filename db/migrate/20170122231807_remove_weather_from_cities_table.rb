class RemoveWeatherFromCitiesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :cities, :current_weather, :text
  end
end
