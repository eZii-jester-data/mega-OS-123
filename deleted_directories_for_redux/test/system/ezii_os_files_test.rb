# typed: false
require "application_system_test_case"

class EziiOsFilesTest < ApplicationSystemTestCase
  setup do
    @ezii_os_file = ezii_os_files(:one)
  end

  test "visiting the index" do
    visit ezii_os_files_url
    assert_selector "h1", text: "Ezii Os Files"
  end

  test "creating a Ezii os file" do
    visit ezii_os_files_url
    click_on "New Ezii Os File"

    fill_in "File path", with: @ezii_os_file.file_path
    click_on "Create Ezii os file"

    assert_text "Ezii os file was successfully created"
    click_on "Back"
  end

  test "updating a Ezii os file" do
    visit ezii_os_files_url
    click_on "Edit", match: :first

    fill_in "File path", with: @ezii_os_file.file_path
    click_on "Update Ezii os file"

    assert_text "Ezii os file was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii os file" do
    visit ezii_os_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii os file was successfully destroyed"
  end
end
