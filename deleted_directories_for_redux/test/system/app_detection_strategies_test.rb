# typed: false
require "application_system_test_case"

class AppDetectionStrategiesTest < ApplicationSystemTestCase
  setup do
    @app_detection_strategy = app_detection_strategies(:one)
  end

  test "visiting the index" do
    visit app_detection_strategies_url
    assert_selector "h1", text: "App Detection Strategies"
  end

  test "creating a App detection strategy" do
    visit app_detection_strategies_url
    click_on "New App Detection Strategy"

    fill_in "App detection", with: @app_detection_strategy.app_detection_id
    fill_in "Implementation in ruby dsl", with: @app_detection_strategy.implementation_in_ruby_dsl
    click_on "Create App detection strategy"

    assert_text "App detection strategy was successfully created"
    click_on "Back"
  end

  test "updating a App detection strategy" do
    visit app_detection_strategies_url
    click_on "Edit", match: :first

    fill_in "App detection", with: @app_detection_strategy.app_detection_id
    fill_in "Implementation in ruby dsl", with: @app_detection_strategy.implementation_in_ruby_dsl
    click_on "Update App detection strategy"

    assert_text "App detection strategy was successfully updated"
    click_on "Back"
  end

  test "destroying a App detection strategy" do
    visit app_detection_strategies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App detection strategy was successfully destroyed"
  end
end
