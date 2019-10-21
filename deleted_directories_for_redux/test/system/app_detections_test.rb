# typed: false
require "application_system_test_case"

class AppDetectionsTest < ApplicationSystemTestCase
  setup do
    @app_detection = app_detections(:one)
  end

  test "visiting the index" do
    visit app_detections_url
    assert_selector "h1", text: "App Detections"
  end

  test "creating a App detection" do
    visit app_detections_url
    click_on "New App Detection"

    fill_in "App type", with: @app_detection.app_type
    fill_in "Strategy", with: @app_detection.strategy
    click_on "Create App detection"

    assert_text "App detection was successfully created"
    click_on "Back"
  end

  test "updating a App detection" do
    visit app_detections_url
    click_on "Edit", match: :first

    fill_in "App type", with: @app_detection.app_type
    fill_in "Strategy", with: @app_detection.strategy
    click_on "Update App detection"

    assert_text "App detection was successfully updated"
    click_on "Back"
  end

  test "destroying a App detection" do
    visit app_detections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App detection was successfully destroyed"
  end
end
