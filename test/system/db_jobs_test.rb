require "application_system_test_case"

class DbJobsTest < ApplicationSystemTestCase
  setup do
    @db_job = db_jobs(:one)
  end

  test "visiting the index" do
    visit db_jobs_url
    assert_selector "h1", text: "Db Jobs"
  end

  test "creating a Db job" do
    visit db_jobs_url
    click_on "New Db Job"

    fill_in "Company benefit", with: @db_job.company_benefit
    fill_in "Company name", with: @db_job.company_name
    fill_in "Job info", with: @db_job.job_info
    fill_in "Job name", with: @db_job.job_name
    fill_in "Job require", with: @db_job.job_require
    fill_in "Salary range", with: @db_job.salary_range
    click_on "Create Db job"

    assert_text "Db job was successfully created"
    click_on "Back"
  end

  test "updating a Db job" do
    visit db_jobs_url
    click_on "Edit", match: :first

    fill_in "Company benefit", with: @db_job.company_benefit
    fill_in "Company name", with: @db_job.company_name
    fill_in "Job info", with: @db_job.job_info
    fill_in "Job name", with: @db_job.job_name
    fill_in "Job require", with: @db_job.job_require
    fill_in "Salary range", with: @db_job.salary_range
    click_on "Update Db job"

    assert_text "Db job was successfully updated"
    click_on "Back"
  end

  test "destroying a Db job" do
    visit db_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Db job was successfully destroyed"
  end
end
