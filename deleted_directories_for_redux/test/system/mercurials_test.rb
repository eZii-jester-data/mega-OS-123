# typed: false
require "application_system_test_case"

class MercurialsTest < ApplicationSystemTestCase
  setup do
    @mercurial = mercurials(:one)
  end

  test "visiting the index" do
    visit mercurials_url
    assert_selector "h1", text: "Mercurials"
  end

  test "creating a Mercurial" do
    visit mercurials_url
    click_on "New Mercurial"

    fill_in "Detected app type", with: @mercurial.detected_app_type
    fill_in "Ezii os global path", with: @mercurial.ezii_os_global_path
    fill_in "Level", with: @mercurial.level
    click_on "Create Mercurial"

    assert_text "Mercurial was successfully created"
    click_on "Back"
  end

  test "updating a Mercurial" do
    visit mercurials_url
    click_on "Edit", match: :first

    fill_in "Detected app type", with: @mercurial.detected_app_type
    fill_in "Ezii os global path", with: @mercurial.ezii_os_global_path
    fill_in "Level", with: @mercurial.level
    click_on "Update Mercurial"

    assert_text "Mercurial was successfully updated"
    click_on "Back"
  end

  test "destroying a Mercurial" do
    visit mercurials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mercurial was successfully destroyed"
  end
end
