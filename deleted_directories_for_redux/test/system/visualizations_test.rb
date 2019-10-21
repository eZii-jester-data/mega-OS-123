# typed: false
require "application_system_test_case"

class VisualizationsTest < ApplicationSystemTestCase
  setup do
    @visualization = visualizations(:one)
  end

  test "visiting the index" do
    visit visualizations_url
    assert_selector "h1", text: "Visualizations"
  end

  test "creating a Visualization" do
    visit visualizations_url
    click_on "New Visualization"

    fill_in "Image url", with: @visualization.image_url
    click_on "Create Visualization"

    assert_text "Visualization was successfully created"
    click_on "Back"
  end

  test "updating a Visualization" do
    visit visualizations_url
    click_on "Edit", match: :first

    fill_in "Image url", with: @visualization.image_url
    click_on "Update Visualization"

    assert_text "Visualization was successfully updated"
    click_on "Back"
  end

  test "destroying a Visualization" do
    visit visualizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visualization was successfully destroyed"
  end
end
