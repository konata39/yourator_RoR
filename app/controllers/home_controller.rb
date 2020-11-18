class HomeController < ApplicationController
  def index
    @company_index = DbCompany.limit(5).all
    @job_index = DbJob.limit(10).all
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
    @job_id = params[:job_id]
  end
  def company_edit
    @company_id = params[:company_id]
  end
  def all_job_edit
    @company_id = params[:company_id]
    @company_name = DbCompany.find(@company_id).company_name
    @job_all = DbJob.where(:company_name => @company_name).to_ary
    def update_status(a = 2, b)
        a + b
    end
  end
end
