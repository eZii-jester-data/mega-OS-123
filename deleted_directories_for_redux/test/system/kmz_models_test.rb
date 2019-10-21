# typed: false
require "application_system_test_case"

class KmzModelsTest < ApplicationSystemTestCase
  setup do
    @kmz_model = kmz_models(:one)
  end

  test "visiting the index" do
    visit kmz_models_url
    assert_selector "h1", text: "Kmz Models"
  end

  test "creating a Kmz model" do
    visit kmz_models_url
    click_on "New Kmz Model"

    fill_in "Description", with: @kmz_model.description
    fill_in "Global path", with: @kmz_model.global_path
    click_on "Create Kmz model"

    assert_text "Kmz model was successfully created"
    click_on "Back"
  end

  test "updating a Kmz model" do
    visit kmz_models_url
    click_on "Edit", match: :first

    fill_in "Description", with: @kmz_model.description
    fill_in "Global path", with: @kmz_model.global_path
    click_on "Update Kmz model"

    assert_text "Kmz model was successfully updated"
    click_on "Back"
  end

  test "destroying a Kmz model" do
    visit kmz_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kmz model was successfully destroyed"
  end
end
