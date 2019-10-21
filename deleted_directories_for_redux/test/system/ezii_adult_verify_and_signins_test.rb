# typed: false
require "application_system_test_case"

class EziiAdultVerifyAndSigninsTest < ApplicationSystemTestCase
  setup do
    @ezii_adult_verify_and_signin = ezii_adult_verify_and_signins(:one)
  end

  test "visiting the index" do
    visit ezii_adult_verify_and_signins_url
    assert_selector "h1", text: "Ezii Adult Verify And Signins"
  end

  test "creating a Ezii adult verify and signin" do
    visit ezii_adult_verify_and_signins_url
    click_on "New Ezii Adult Verify And Signin"

    fill_in "Scm", with: @ezii_adult_verify_and_signin.scm_id
    fill_in "Shell script used", with: @ezii_adult_verify_and_signin.shell_script_used
    fill_in "User name", with: @ezii_adult_verify_and_signin.user_name
    fill_in "When will scm scl011 be available as rubygem integration", with: @ezii_adult_verify_and_signin.when_will_scm_scl011_be_available_as_rubygem_integration
    click_on "Create Ezii adult verify and signin"

    assert_text "Ezii adult verify and signin was successfully created"
    click_on "Back"
  end

  test "updating a Ezii adult verify and signin" do
    visit ezii_adult_verify_and_signins_url
    click_on "Edit", match: :first

    fill_in "Scm", with: @ezii_adult_verify_and_signin.scm_id
    fill_in "Shell script used", with: @ezii_adult_verify_and_signin.shell_script_used
    fill_in "User name", with: @ezii_adult_verify_and_signin.user_name
    fill_in "When will scm scl011 be available as rubygem integration", with: @ezii_adult_verify_and_signin.when_will_scm_scl011_be_available_as_rubygem_integration
    click_on "Update Ezii adult verify and signin"

    assert_text "Ezii adult verify and signin was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii adult verify and signin" do
    visit ezii_adult_verify_and_signins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii adult verify and signin was successfully destroyed"
  end
end
