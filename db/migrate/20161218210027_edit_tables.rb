class EditTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :cities, :air_quality, :integer
    remove_column :job_by_cities, :number_of_jobs, :string
    remove_column :job_by_cities, :integer, :string
    rename_column :cities, :weather, :current_weather
    add_column :cities, :cost_of_living_index, :decimal, precision: 6, scale: 2
    add_column :job_by_cities, :location_quotient, :decimal, precision: 6, scale: 2
  end
end
