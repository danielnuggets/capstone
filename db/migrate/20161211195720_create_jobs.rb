class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :average_salary

      t.timestamps
    end
  end
end
