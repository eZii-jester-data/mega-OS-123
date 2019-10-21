# typed: false
require "application_system_test_case"

class WitAiParseModelExamplesTest < ApplicationSystemTestCase
  setup do
    @wit_ai_parse_model_example = wit_ai_parse_model_examples(:one)
  end

  test "visiting the index" do
    visit wit_ai_parse_model_examples_url
    assert_selector "h1", text: "Wit Ai Parse Model Examples"
  end

  test "creating a Wit ai parse model example" do
    visit wit_ai_parse_model_examples_url
    click_on "New Wit Ai Parse Model Example"

    fill_in "Wit ai parse model", with: @wit_ai_parse_model_example.wit_ai_parse_model_id
    click_on "Create Wit ai parse model example"

    assert_text "Wit ai parse model example was successfully created"
    click_on "Back"
  end

  test "updating a Wit ai parse model example" do
    visit wit_ai_parse_model_examples_url
    click_on "Edit", match: :first

    fill_in "Wit ai parse model", with: @wit_ai_parse_model_example.wit_ai_parse_model_id
    click_on "Update Wit ai parse model example"

    assert_text "Wit ai parse model example was successfully updated"
    click_on "Back"
  end

  test "destroying a Wit ai parse model example" do
    visit wit_ai_parse_model_examples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wit ai parse model example was successfully destroyed"
  end
end
