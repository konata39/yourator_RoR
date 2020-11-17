class DbCompaniesController < ApplicationController
  before_action :set_db_company, only: [:show, :edit, :update, :destroy]

  # GET /db_companies
  # GET /db_companies.json
  def index
    @db_companies = DbCompany.all
  end

  # GET /db_companies/1
  # GET /db_companies/1.json
  def show
  end

  # GET /db_companies/new
  def new
    @db_company = DbCompany.new
  end

  # GET /db_companies/1/edit
  def edit
  end

  # POST /db_companies
  # POST /db_companies.json
  def create
    @db_company = DbCompany.new(db_company_params)

    respond_to do |format|
      if @db_company.save
        format.html { redirect_to @db_company, notice: 'Db company was successfully created.' }
        format.json { render :show, status: :created, location: @db_company }
      else
        format.html { render :new }
        format.json { render json: @db_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /db_companies/1
  # PATCH/PUT /db_companies/1.json
  def update
    respond_to do |format|
      if @db_company.update(db_company_params)
        format.html { redirect_to @db_company, notice: 'Db company was successfully updated.' }
        format.json { render :show, status: :ok, location: @db_company }
      else
        format.html { render :edit }
        format.json { render json: @db_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_companies/1
  # DELETE /db_companies/1.json
  def destroy
    @db_company.destroy
    respond_to do |format|
      format.html { redirect_to db_companies_url, notice: 'Db company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_db_company
      @db_company = DbCompany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def db_company_params
      params.require(:db_company).permit(:company_name, :company_info, :company_target, :company_media, :company_salary)
    end
end
