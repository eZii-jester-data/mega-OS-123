# typed: false
require "application_system_test_case"

class AppDetectionAnalysesTest < ApplicationSystemTestCase
  setup do
    @app_detection_analysis = app_detection_analyses(:one)
  end

  test "visiting the index" do
    visit app_detection_analyses_url
    assert_selector "h1", text: "App Detection Analyses"
  end

  test "creating a App detection analysis" do
    visit app_detection_analyses_url
    click_on "New App Detection Analysis"

    fill_in "App detection", with: @app_detection_analysis.app_detection_id
    fill_in "Confidence", with: @app_detection_analysis.confidence
    click_on "Create App detection analysis"

    assert_text "App detection analysis was successfully created"
    click_on "Back"
  end

  test "updating a App detection analysis" do
    visit app_detection_analyses_url
    click_on "Edit", match: :first

    fill_in "App detection", with: @app_detection_analysis.app_detection_id
    fill_in "Confidence", with: @app_detection_analysis.confidence
    click_on "Update App detection analysis"

    assert_text "App detection analysis was successfully updated"
    click_on "Back"
  end

  test "destroying a App detection analysis" do
    visit app_detection_analyses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App detection analysis was successfully destroyed"
  end
end
