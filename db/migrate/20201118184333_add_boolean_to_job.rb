class AddBooleanToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :db_jobs, :job_status, :boolean
  end
end
