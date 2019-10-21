# typed: false
require "application_system_test_case"

class EziiCitiesTest < ApplicationSystemTestCase
  setup do
    @ezii_city = ezii_cities(:one)
  end

  test "visiting the index" do
    visit ezii_cities_url
    assert_selector "h1", text: "Ezii Cities"
  end

  test "creating a Ezii city" do
    visit ezii_cities_url
    click_on "New Ezii City"

    fill_in "Address", with: @ezii_city.address
    click_on "Create Ezii city"

    assert_text "Ezii city was successfully created"
    click_on "Back"
  end

  test "updating a Ezii city" do
    visit ezii_cities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @ezii_city.address
    click_on "Update Ezii city"

    assert_text "Ezii city was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii city" do
    visit ezii_cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii city was successfully destroyed"
  end
end
