# typed: false
require "application_system_test_case"

class EziiZappingsTest < ApplicationSystemTestCase
  setup do
    @ezii_zapping = ezii_zappings(:one)
  end

  test "visiting the index" do
    visit ezii_zappings_url
    assert_selector "h1", text: "Ezii Zappings"
  end

  test "creating a Ezii zapping" do
    visit ezii_zappings_url
    click_on "New Ezii Zapping"

    fill_in "Next url", with: @ezii_zapping.next_url
    fill_in "Previous url", with: @ezii_zapping.previous_url
    click_on "Create Ezii zapping"

    assert_text "Ezii zapping was successfully created"
    click_on "Back"
  end

  test "updating a Ezii zapping" do
    visit ezii_zappings_url
    click_on "Edit", match: :first

    fill_in "Next url", with: @ezii_zapping.next_url
    fill_in "Previous url", with: @ezii_zapping.previous_url
    click_on "Update Ezii zapping"

    assert_text "Ezii zapping was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii zapping" do
    visit ezii_zappings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii zapping was successfully destroyed"
  end
end
