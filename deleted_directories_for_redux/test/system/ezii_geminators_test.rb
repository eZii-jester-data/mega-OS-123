# typed: false
require "application_system_test_case"

class EziiGeminatorsTest < ApplicationSystemTestCase
  setup do
    @ezii_geminator = ezii_geminators(:one)
  end

  test "visiting the index" do
    visit ezii_geminators_url
    assert_selector "h1", text: "Ezii Geminators"
  end

  test "creating a Ezii geminator" do
    visit ezii_geminators_url
    click_on "New Ezii Geminator"

    fill_in "Graphql query text", with: @ezii_geminator.graphql_query_text
    fill_in "Url text", with: @ezii_geminator.url_text
    click_on "Create Ezii geminator"

    assert_text "Ezii geminator was successfully created"
    click_on "Back"
  end

  test "updating a Ezii geminator" do
    visit ezii_geminators_url
    click_on "Edit", match: :first

    fill_in "Graphql query text", with: @ezii_geminator.graphql_query_text
    fill_in "Url text", with: @ezii_geminator.url_text
    click_on "Update Ezii geminator"

    assert_text "Ezii geminator was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii geminator" do
    visit ezii_geminators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii geminator was successfully destroyed"
  end
end
