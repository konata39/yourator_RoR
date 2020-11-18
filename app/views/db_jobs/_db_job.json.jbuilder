json.extract! db_job, :id, :job_status, :company_name, :job_name, :job_info, :job_require, :job_benefit, :salary_range, :created_at, :updated_at
json.url db_job_url(db_job, format: :json)
