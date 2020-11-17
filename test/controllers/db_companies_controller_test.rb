require 'test_helper'

class DbCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @db_company = db_companies(:one)
  end

  test "should get index" do
    get db_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_db_company_url
    assert_response :success
  end

  test "should create db_company" do
    assert_difference('DbCompany.count') do
      post db_companies_url, params: { db_company: { company_info: @db_company.company_info, company_media: @db_company.company_media, company_name: @db_company.company_name, company_salary: @db_company.company_salary, company_target: @db_company.company_target } }
    end

    assert_redirected_to db_company_url(DbCompany.last)
  end

  test "should show db_company" do
    get db_company_url(@db_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_db_company_url(@db_company)
    assert_response :success
  end

  test "should update db_company" do
    patch db_company_url(@db_company), params: { db_company: { company_info: @db_company.company_info, company_media: @db_company.company_media, company_name: @db_company.company_name, company_salary: @db_company.company_salary, company_target: @db_company.company_target } }
    assert_redirected_to db_company_url(@db_company)
  end

  test "should destroy db_company" do
    assert_difference('DbCompany.count', -1) do
      delete db_company_url(@db_company)
    end

    assert_redirected_to db_companies_url
  end
end
