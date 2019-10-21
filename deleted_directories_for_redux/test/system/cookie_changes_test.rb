# typed: false
require "application_system_test_case"

class CookieChangesTest < ApplicationSystemTestCase
  setup do
    @cookie_change = cookie_changes(:one)
  end

  test "visiting the index" do
    visit cookie_changes_url
    assert_selector "h1", text: "Cookie Changes"
  end

  test "creating a Cookie change" do
    visit cookie_changes_url
    click_on "New Cookie Change"

    fill_in "Identifier", with: @cookie_change.identifier
    fill_in "Value", with: @cookie_change.value
    click_on "Create Cookie change"

    assert_text "Cookie change was successfully created"
    click_on "Back"
  end

  test "updating a Cookie change" do
    visit cookie_changes_url
    click_on "Edit", match: :first

    fill_in "Identifier", with: @cookie_change.identifier
    fill_in "Value", with: @cookie_change.value
    click_on "Update Cookie change"

    assert_text "Cookie change was successfully updated"
    click_on "Back"
  end

  test "destroying a Cookie change" do
    visit cookie_changes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cookie change was successfully destroyed"
  end
end
