# typed: false
require "application_system_test_case"

class Banal::MetadataTest < ApplicationSystemTestCase
  setup do
    @banal_metadatum = banal_metadata(:one)
  end

  test "visiting the index" do
    visit banal_metadata_url
    assert_selector "h1", text: "Banal/Metadata"
  end

  test "creating a Metadatum" do
    visit banal_metadata_url
    click_on "New Banal/Metadatum"

    fill_in "Category", with: @banal_metadatum.category
    fill_in "Language", with: @banal_metadatum.language
    fill_in "Sub category", with: @banal_metadatum.sub_category
    click_on "Create Metadatum"

    assert_text "Metadatum was successfully created"
    click_on "Back"
  end

  test "updating a Metadatum" do
    visit banal_metadata_url
    click_on "Edit", match: :first

    fill_in "Category", with: @banal_metadatum.category
    fill_in "Language", with: @banal_metadatum.language
    fill_in "Sub category", with: @banal_metadatum.sub_category
    click_on "Update Metadatum"

    assert_text "Metadatum was successfully updated"
    click_on "Back"
  end

  test "destroying a Metadatum" do
    visit banal_metadata_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metadatum was successfully destroyed"
  end
end
