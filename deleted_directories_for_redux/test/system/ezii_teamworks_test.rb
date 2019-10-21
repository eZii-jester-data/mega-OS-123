# typed: false
require "application_system_test_case"

class EziiTeamworksTest < ApplicationSystemTestCase
  setup do
    @ezii_teamwork = ezii_teamworks(:one)
  end

  test "visiting the index" do
    visit ezii_teamworks_url
    assert_selector "h1", text: "Ezii Teamworks"
  end

  test "creating a Ezii teamwork" do
    visit ezii_teamworks_url
    click_on "New Ezii Teamwork"

    fill_in "Employee graph svg text", with: @ezii_teamwork.employee_graph_svg_text
    fill_in "Ezii game x zip download link", with: @ezii_teamwork.ezii_game_x_zip_download_link
    fill_in "Medium link", with: @ezii_teamwork.medium_link
    click_on "Create Ezii teamwork"

    assert_text "Ezii teamwork was successfully created"
    click_on "Back"
  end

  test "updating a Ezii teamwork" do
    visit ezii_teamworks_url
    click_on "Edit", match: :first

    fill_in "Employee graph svg text", with: @ezii_teamwork.employee_graph_svg_text
    fill_in "Ezii game x zip download link", with: @ezii_teamwork.ezii_game_x_zip_download_link
    fill_in "Medium link", with: @ezii_teamwork.medium_link
    click_on "Update Ezii teamwork"

    assert_text "Ezii teamwork was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii teamwork" do
    visit ezii_teamworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii teamwork was successfully destroyed"
  end
end
