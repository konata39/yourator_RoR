json.extract! db_company, :id, :company_name, :company_info, :company_target, :company_media, :company_salary, :created_at, :updated_at
json.url db_company_url(db_company, format: :json)
