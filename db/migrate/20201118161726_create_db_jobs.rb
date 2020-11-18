class CreateDbJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :db_jobs do |t|
      t.string :company_name
      t.string :job_name
      t.text :job_info
      t.text :job_require
      t.text :company_benefit
      t.text :salary_range

      t.timestamps
    end
  end
end
