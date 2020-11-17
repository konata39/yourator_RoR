require "application_system_test_case"

class DbCompaniesTest < ApplicationSystemTestCase
  setup do
    @db_company = db_companies(:one)
  end

  test "visiting the index" do
    visit db_companies_url
    assert_selector "h1", text: "Db Companies"
  end

  test "creating a Db company" do
    visit db_companies_url
    click_on "New Db Company"

    fill_in "Company info", with: @db_company.company_info
    fill_in "Company media", with: @db_company.company_media
    fill_in "Company name", with: @db_company.company_name
    fill_in "Company salary", with: @db_company.company_salary
    fill_in "Company target", with: @db_company.company_target
    click_on "Create Db company"

    assert_text "Db company was successfully created"
    click_on "Back"
  end

  test "updating a Db company" do
    visit db_companies_url
    click_on "Edit", match: :first

    fill_in "Company info", with: @db_company.company_info
    fill_in "Company media", with: @db_company.company_media
    fill_in "Company name", with: @db_company.company_name
    fill_in "Company salary", with: @db_company.company_salary
    fill_in "Company target", with: @db_company.company_target
    click_on "Update Db company"

    assert_text "Db company was successfully updated"
    click_on "Back"
  end

  test "destroying a Db company" do
    visit db_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Db company was successfully destroyed"
  end
end
