# typed: false
require "application_system_test_case"

class UnzipsTest < ApplicationSystemTestCase
  setup do
    @unzip = unzips(:one)
  end

  test "visiting the index" do
    visit unzips_url
    assert_selector "h1", text: "Unzips"
  end

  test "creating a Unzip" do
    visit unzips_url
    click_on "New Unzip"

    fill_in "Zip file path", with: @unzip.zip_file_path
    click_on "Create Unzip"

    assert_text "Unzip was successfully created"
    click_on "Back"
  end

  test "updating a Unzip" do
    visit unzips_url
    click_on "Edit", match: :first

    fill_in "Zip file path", with: @unzip.zip_file_path
    click_on "Update Unzip"

    assert_text "Unzip was successfully updated"
    click_on "Back"
  end

  test "destroying a Unzip" do
    visit unzips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unzip was successfully destroyed"
  end
end
