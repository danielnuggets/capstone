class EditJobsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :jobs, :average_salary, :national_median_salary
  end
end
