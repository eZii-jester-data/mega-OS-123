# typed: false
require "application_system_test_case"

class BasecampIntegrationsTest < ApplicationSystemTestCase
  setup do
    @basecamp_integration = basecamp_integrations(:one)
  end

  test "visiting the index" do
    visit basecamp_integrations_url
    assert_selector "h1", text: "Basecamp Integrations"
  end

  test "creating a Basecamp integration" do
    visit basecamp_integrations_url
    click_on "New Basecamp Integration"

    fill_in "Code", with: @basecamp_integration.code
    fill_in "Description", with: @basecamp_integration.description
    click_on "Create Basecamp integration"

    assert_text "Basecamp integration was successfully created"
    click_on "Back"
  end

  test "updating a Basecamp integration" do
    visit basecamp_integrations_url
    click_on "Edit", match: :first

    fill_in "Code", with: @basecamp_integration.code
    fill_in "Description", with: @basecamp_integration.description
    click_on "Update Basecamp integration"

    assert_text "Basecamp integration was successfully updated"
    click_on "Back"
  end

  test "destroying a Basecamp integration" do
    visit basecamp_integrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Basecamp integration was successfully destroyed"
  end
end
