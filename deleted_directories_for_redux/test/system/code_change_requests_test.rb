# typed: false
require "application_system_test_case"

class CodeChangeRequestsTest < ApplicationSystemTestCase
  setup do
    @code_change_request = code_change_requests(:one)
  end

  test "visiting the index" do
    visit code_change_requests_url
    assert_selector "h1", text: "Code Change Requests"
  end

  test "creating a Code change request" do
    visit code_change_requests_url
    click_on "New Code Change Request"

    fill_in "Text", with: @code_change_request.text
    click_on "Create Code change request"

    assert_text "Code change request was successfully created"
    click_on "Back"
  end

  test "updating a Code change request" do
    visit code_change_requests_url
    click_on "Edit", match: :first

    fill_in "Text", with: @code_change_request.text
    click_on "Update Code change request"

    assert_text "Code change request was successfully updated"
    click_on "Back"
  end

  test "destroying a Code change request" do
    visit code_change_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code change request was successfully destroyed"
  end
end
