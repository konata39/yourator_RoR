require 'test_helper'

class DbJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @db_job = db_jobs(:one)
  end

  test "should get index" do
    get db_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_db_job_url
    assert_response :success
  end

  test "should create db_job" do
    assert_difference('DbJob.count') do
      post db_jobs_url, params: { db_job: { company_name: @db_job.company_name, job_benefit: @db_job.job_benefit, job_info: @db_job.job_info, job_name: @db_job.job_name, job_require: @db_job.job_require, job_status: @db_job.job_status, salary_range: @db_job.salary_range } }
    end

    assert_redirected_to db_job_url(DbJob.last)
  end

  test "should show db_job" do
    get db_job_url(@db_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_db_job_url(@db_job)
    assert_response :success
  end

  test "should update db_job" do
    patch db_job_url(@db_job), params: { db_job: { company_name: @db_job.company_name, job_benefit: @db_job.job_benefit, job_info: @db_job.job_info, job_name: @db_job.job_name, job_require: @db_job.job_require, job_status: @db_job.job_status, salary_range: @db_job.salary_range } }
    assert_redirected_to db_job_url(@db_job)
  end

  test "should destroy db_job" do
    assert_difference('DbJob.count', -1) do
      delete db_job_url(@db_job)
    end

    assert_redirected_to db_jobs_url
  end
end
