# typed: false
require "application_system_test_case"

class WitAiParseModelsTest < ApplicationSystemTestCase
  setup do
    @wit_ai_parse_model = wit_ai_parse_models(:one)
  end

  test "visiting the index" do
    visit wit_ai_parse_models_url
    assert_selector "h1", text: "Wit Ai Parse Models"
  end

  test "creating a Wit ai parse model" do
    visit wit_ai_parse_models_url
    click_on "New Wit Ai Parse Model"

    fill_in "Wit ai client token", with: @wit_ai_parse_model.wit_ai_client_token
    fill_in "Wit ai server token", with: @wit_ai_parse_model.wit_ai_server_token
    click_on "Create Wit ai parse model"

    assert_text "Wit ai parse model was successfully created"
    click_on "Back"
  end

  test "updating a Wit ai parse model" do
    visit wit_ai_parse_models_url
    click_on "Edit", match: :first

    fill_in "Wit ai client token", with: @wit_ai_parse_model.wit_ai_client_token
    fill_in "Wit ai server token", with: @wit_ai_parse_model.wit_ai_server_token
    click_on "Update Wit ai parse model"

    assert_text "Wit ai parse model was successfully updated"
    click_on "Back"
  end

  test "destroying a Wit ai parse model" do
    visit wit_ai_parse_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wit ai parse model was successfully destroyed"
  end
end
