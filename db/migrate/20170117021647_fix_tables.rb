class FixTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :cities, :cost_of_living_index, :decimal
    add_column :cities, :cost_of_living_monthly, :decimal, precision: 7, scale: 2
  end
end
