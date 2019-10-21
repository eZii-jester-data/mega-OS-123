# typed: false
require "application_system_test_case"

class FileSystemsTest < ApplicationSystemTestCase
  setup do
    @file_system = file_systems(:one)
  end

  test "visiting the index" do
    visit file_systems_url
    assert_selector "h1", text: "File Systems"
  end

  test "creating a File system" do
    visit file_systems_url
    click_on "New File System"

    fill_in "Description", with: @file_system.description
    fill_in "Machine readable identifier", with: @file_system.machine_readable_identifier
    click_on "Create File system"

    assert_text "File system was successfully created"
    click_on "Back"
  end

  test "updating a File system" do
    visit file_systems_url
    click_on "Edit", match: :first

    fill_in "Description", with: @file_system.description
    fill_in "Machine readable identifier", with: @file_system.machine_readable_identifier
    click_on "Update File system"

    assert_text "File system was successfully updated"
    click_on "Back"
  end

  test "destroying a File system" do
    visit file_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File system was successfully destroyed"
  end
end
