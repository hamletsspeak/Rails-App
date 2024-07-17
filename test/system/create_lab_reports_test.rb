require "application_system_test_case"

class CreateLabReportsTest < ApplicationSystemTestCase
  setup do
    @create_lab_report = create_lab_reports(:one)
  end

  test "visiting the index" do
    visit create_lab_reports_url
    assert_selector "h1", text: "Create lab reports"
  end

  test "should create create lab report" do
    visit create_lab_reports_url
    click_on "New create lab report"

    fill_in "Description", with: @create_lab_report.description
    fill_in "Grade", with: @create_lab_report.grade
    fill_in "Title", with: @create_lab_report.title
    fill_in "User", with: @create_lab_report.user_id
    click_on "Create Create lab report"

    assert_text "Create lab report was successfully created"
    click_on "Back"
  end

  test "should update Create lab report" do
    visit create_lab_report_url(@create_lab_report)
    click_on "Edit this create lab report", match: :first

    fill_in "Description", with: @create_lab_report.description
    fill_in "Grade", with: @create_lab_report.grade
    fill_in "Title", with: @create_lab_report.title
    fill_in "User", with: @create_lab_report.user_id
    click_on "Update Create lab report"

    assert_text "Create lab report was successfully updated"
    click_on "Back"
  end

  test "should destroy Create lab report" do
    visit create_lab_report_url(@create_lab_report)
    click_on "Destroy this create lab report", match: :first

    assert_text "Create lab report was successfully destroyed"
  end
end
