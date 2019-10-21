# typed: false
require "application_system_test_case"

class EziiIntegrationsTest < ApplicationSystemTestCase
  setup do
    @ezii_integration = ezii_integrations(:one)
  end

  test "visiting the index" do
    visit ezii_integrations_url
    assert_selector "h1", text: "Ezii Integrations"
  end

  test "creating a Ezii integration" do
    visit ezii_integrations_url
    click_on "New Ezii Integration"

    click_on "Create Ezii integration"

    assert_text "Ezii integration was successfully created"
    click_on "Back"
  end

  test "updating a Ezii integration" do
    visit ezii_integrations_url
    click_on "Edit", match: :first

    click_on "Update Ezii integration"

    assert_text "Ezii integration was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii integration" do
    visit ezii_integrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii integration was successfully destroyed"
  end
end
