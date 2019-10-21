# typed: false
require "application_system_test_case"

class EziiDeltaDirectionsTest < ApplicationSystemTestCase
  setup do
    @ezii_delta_direction = ezii_delta_directions(:one)
  end

  test "visiting the index" do
    visit ezii_delta_directions_url
    assert_selector "h1", text: "Ezii Delta Directions"
  end

  test "creating a Ezii delta direction" do
    visit ezii_delta_directions_url
    click_on "New Ezii Delta Direction"

    fill_in "Direction y", with: @ezii_delta_direction.direction_y
    fill_in "Ezii delta git", with: @ezii_delta_direction.ezii_delta_git_id
    click_on "Create Ezii delta direction"

    assert_text "Ezii delta direction was successfully created"
    click_on "Back"
  end

  test "updating a Ezii delta direction" do
    visit ezii_delta_directions_url
    click_on "Edit", match: :first

    fill_in "Direction y", with: @ezii_delta_direction.direction_y
    fill_in "Ezii delta git", with: @ezii_delta_direction.ezii_delta_git_id
    click_on "Update Ezii delta direction"

    assert_text "Ezii delta direction was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii delta direction" do
    visit ezii_delta_directions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii delta direction was successfully destroyed"
  end
end
