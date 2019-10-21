# typed: false
require "application_system_test_case"

class StickRecordsTest < ApplicationSystemTestCase
  setup do
    @stick_record = stick_records(:one)
  end

  test "visiting the index" do
    visit stick_records_url
    assert_selector "h1", text: "Stick Records"
  end

  test "creating a Stick record" do
    visit stick_records_url
    click_on "New Stick Record"

    fill_in "Identifier", with: @stick_record.identifier
    fill_in "Modifiers", with: @stick_record.modifiers
    click_on "Create Stick record"

    assert_text "Stick record was successfully created"
    click_on "Back"
  end

  test "updating a Stick record" do
    visit stick_records_url
    click_on "Edit", match: :first

    fill_in "Identifier", with: @stick_record.identifier
    fill_in "Modifiers", with: @stick_record.modifiers
    click_on "Update Stick record"

    assert_text "Stick record was successfully updated"
    click_on "Back"
  end

  test "destroying a Stick record" do
    visit stick_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stick record was successfully destroyed"
  end
end
