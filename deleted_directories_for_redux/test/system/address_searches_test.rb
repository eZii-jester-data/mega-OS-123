# typed: false
require "application_system_test_case"

class AddressSearchesTest < ApplicationSystemTestCase
  setup do
    @address_search = address_searches(:one)
  end

  test "visiting the index" do
    visit address_searches_url
    assert_selector "h1", text: "Address Searches"
  end

  test "creating a Address search" do
    visit address_searches_url
    click_on "New Address Search"

    fill_in "Search string", with: @address_search.search_string
    fill_in "Sentiment", with: @address_search.sentiment
    click_on "Create Address search"

    assert_text "Address search was successfully created"
    click_on "Back"
  end

  test "updating a Address search" do
    visit address_searches_url
    click_on "Edit", match: :first

    fill_in "Search string", with: @address_search.search_string
    fill_in "Sentiment", with: @address_search.sentiment
    click_on "Update Address search"

    assert_text "Address search was successfully updated"
    click_on "Back"
  end

  test "destroying a Address search" do
    visit address_searches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address search was successfully destroyed"
  end
end
