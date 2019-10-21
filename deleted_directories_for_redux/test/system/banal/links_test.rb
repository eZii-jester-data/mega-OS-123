# typed: false
require "application_system_test_case"

class Banal::LinksTest < ApplicationSystemTestCase
  setup do
    @banal_link = banal_links(:one)
  end

  test "visiting the index" do
    visit banal_links_url
    assert_selector "h1", text: "Banal/Links"
  end

  test "creating a Link" do
    visit banal_links_url
    click_on "New Banal/Link"

    fill_in "Metadata", with: @banal_link.metadata_id
    fill_in "Related object", with: @banal_link.related_object_id
    fill_in "Uri", with: @banal_link.uri
    click_on "Create Link"

    assert_text "Link was successfully created"
    click_on "Back"
  end

  test "updating a Link" do
    visit banal_links_url
    click_on "Edit", match: :first

    fill_in "Metadata", with: @banal_link.metadata_id
    fill_in "Related object", with: @banal_link.related_object_id
    fill_in "Uri", with: @banal_link.uri
    click_on "Update Link"

    assert_text "Link was successfully updated"
    click_on "Back"
  end

  test "destroying a Link" do
    visit banal_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Link was successfully destroyed"
  end
end
