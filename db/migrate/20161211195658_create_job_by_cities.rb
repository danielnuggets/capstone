class CreateJobByCities < ActiveRecord::Migration[5.0]
  def change
    create_table :job_by_cities do |t|
      t.integer :city_id
      t.integer :job_id
      t.integer :median_salary
      t.string :number_of_jobs
      t.string :integer

      t.timestamps
    end
  end
end
