class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column DbJob, "company_benefit", "job_benefit"
  end
end
