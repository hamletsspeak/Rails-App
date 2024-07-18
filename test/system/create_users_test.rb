require "application_system_test_case"

class CreateUsersTest < ApplicationSystemTestCase
  setup do
    @create_user = create_users(:one)
  end

  test "visiting the index" do
    visit create_users_url
    assert_selector "h1", text: "Create users"
  end

  test "should create create user" do
    visit create_users_url
    click_on "New create user"

    fill_in "Email", with: @create_user.email
    fill_in "First name", with: @create_user.first_name
    fill_in "Last name", with: @create_user.last_name
    click_on "Create Create user"

    assert_text "Create user was successfully created"
    click_on "Back"
  end

  test "should update Create user" do
    visit create_user_url(@create_user)
    click_on "Edit this create user", match: :first

    fill_in "Email", with: @create_user.email
    fill_in "First name", with: @create_user.first_name
    fill_in "Last name", with: @create_user.last_name
    click_on "Update Create user"

    assert_text "Create user was successfully updated"
    click_on "Back"
  end

  test "should destroy Create user" do
    visit create_user_url(@create_user)
    click_on "Destroy this create user", match: :first

    assert_text "Create user was successfully destroyed"
  end
end
