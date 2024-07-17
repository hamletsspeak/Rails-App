require "test_helper"

class CreateLabReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_lab_report = create_lab_reports(:one)
  end

  test "should get index" do
    get create_lab_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_create_lab_report_url
    assert_response :success
  end

  test "should create create_lab_report" do
    assert_difference("CreateLabReport.count") do
      post create_lab_reports_url, params: { create_lab_report: { description: @create_lab_report.description, grade: @create_lab_report.grade, title: @create_lab_report.title, user_id: @create_lab_report.user_id } }
    end

    assert_redirected_to create_lab_report_url(CreateLabReport.last)
  end

  test "should show create_lab_report" do
    get create_lab_report_url(@create_lab_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_lab_report_url(@create_lab_report)
    assert_response :success
  end

  test "should update create_lab_report" do
    patch create_lab_report_url(@create_lab_report), params: { create_lab_report: { description: @create_lab_report.description, grade: @create_lab_report.grade, title: @create_lab_report.title, user_id: @create_lab_report.user_id } }
    assert_redirected_to create_lab_report_url(@create_lab_report)
  end

  test "should destroy create_lab_report" do
    assert_difference("CreateLabReport.count", -1) do
      delete create_lab_report_url(@create_lab_report)
    end

    assert_redirected_to create_lab_reports_url
  end
end
