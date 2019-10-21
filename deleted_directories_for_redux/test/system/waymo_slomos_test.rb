# typed: false
require "application_system_test_case"

class WaymoSlomosTest < ApplicationSystemTestCase
  setup do
    @waymo_slomo = waymo_slomos(:one)
  end

  test "visiting the index" do
    visit waymo_slomos_url
    assert_selector "h1", text: "Waymo Slomos"
  end

  test "creating a Waymo slomo" do
    visit waymo_slomos_url
    click_on "New Waymo Slomo"

    fill_in "Banal brainstorm", with: @waymo_slomo.banal_brainstorm_id
    click_on "Create Waymo slomo"

    assert_text "Waymo slomo was successfully created"
    click_on "Back"
  end

  test "updating a Waymo slomo" do
    visit waymo_slomos_url
    click_on "Edit", match: :first

    fill_in "Banal brainstorm", with: @waymo_slomo.banal_brainstorm_id
    click_on "Update Waymo slomo"

    assert_text "Waymo slomo was successfully updated"
    click_on "Back"
  end

  test "destroying a Waymo slomo" do
    visit waymo_slomos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Waymo slomo was successfully destroyed"
  end
end
