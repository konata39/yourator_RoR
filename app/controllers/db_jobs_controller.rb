class DbJobsController < ApplicationController
  before_action :set_db_job, only: [:show, :edit, :update, :destroy]

  # GET /db_jobs
  # GET /db_jobs.json
  def index
    @db_jobs = DbJob.all
  end

  # GET /db_jobs/1
  # GET /db_jobs/1.json
  def show
  end

  # GET /db_jobs/new
  def new
    @db_job = DbJob.new
  end

  # GET /db_jobs/1/edit
  def edit
  end

  # POST /db_jobs
  # POST /db_jobs.json
  def create
    @db_job = DbJob.new(db_job_params)

    respond_to do |format|
      if @db_job.save
        format.html { redirect_to @db_job, notice: 'Db job was successfully created.' }
        format.json { render :show, status: :created, location: @db_job }
      else
        format.html { render :new }
        format.json { render json: @db_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /db_jobs/1
  # PATCH/PUT /db_jobs/1.json
  def update
    respond_to do |format|
      if @db_job.update(db_job_params)
        format.html { redirect_to @db_job, notice: 'Db job was successfully updated.' }
        format.json { render :show, status: :ok, location: @db_job }
      else
        format.html { render :edit }
        format.json { render json: @db_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_jobs/1
  # DELETE /db_jobs/1.json
  def destroy
    @db_job.destroy
    respond_to do |format|
      format.html { redirect_to db_jobs_url, notice: 'Db job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_db_job
      @db_job = DbJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def db_job_params
      params.require(:db_job).permit(:company_name, :job_name, :job_info, :job_require, :job_benefit, :salary_range, :job_status)
    end
end
