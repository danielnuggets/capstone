class RemoveLocationQuotient < ActiveRecord::Migration[5.0]
  def change
    remove_column :job_by_cities, :location_quotient, :decimal
  end
end
