class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    remove_column :cities, :cost_of_living, :integer
  end
end
