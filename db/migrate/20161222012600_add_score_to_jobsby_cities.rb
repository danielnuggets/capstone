class AddScoreToJobsbyCities < ActiveRecord::Migration[5.0]
  def change
    add_column :job_by_cities, :score, :integer
  end
end
