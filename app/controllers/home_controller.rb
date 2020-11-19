class HomeController < ApplicationController
  def index
    @company_index = DbCompany.limit(5).all
    @job_index = DbJob.limit(10).where(:job_status => true)
  end
  def job
    @job_all = DbJob.all
  end
  def company
    @company_all = DbCompany.all
  end
  def job_info
    @company_all = DbCompany.all
    @job_id = params[:job_id]
    @job_all = DbJob.all
  end
  def company_info
    @company_all = DbCompany.all
    @company_id = params[:company_id]
    @job_all = DbJob.all
  end
  def job_edit
    @company_id = params[:company_id]
    @company_name = DbCompany.find(@company_id).company_name
  end
  def company_edit
    @company_id = params[:company_id]
    @company_data = DbCompany.find(@company_id)
  end
  def all_job_edit
    @company_id = params[:company_id]
    @company_name = DbCompany.find(@company_id).company_name
    @job_all = DbJob.where(:company_name => @company_name).to_ary
  end
  def state_execution
    execution = DbJob.find(params[:id])
    execution.job_status = !execution.job_status
    execution.save
  end
  def delete_execution
    execution = DbJob.find(params[:id])
    execution.destroy
  end
  def job_execution
    DbJob.create job_status: params[:job_status], company_name: params[:company_name], job_name: params[:job_name], job_info: params[:job_info], job_require: params[:job_require], job_benefit: params[:job_benefit], salary_range: params[:salary_range]
  end
  def company_execution
    execution = DbCompany.find(params[:company_id])
    execution.company_info = params[:company_info]
    execution.company_target = params[:company_target]
    execution.company_media = params[:company_media]
    execution.company_salary = params[:company_salary]
    execution.save
  end
end
