# typed: false
require "application_system_test_case"

class GltfModelsTest < ApplicationSystemTestCase
  setup do
    @gltf_model = gltf_models(:one)
  end

  test "visiting the index" do
    visit gltf_models_url
    assert_selector "h1", text: "Gltf Models"
  end

  test "creating a Gltf model" do
    visit gltf_models_url
    click_on "New Gltf Model"

    fill_in "Global path", with: @gltf_model.global_path
    click_on "Create Gltf model"

    assert_text "Gltf model was successfully created"
    click_on "Back"
  end

  test "updating a Gltf model" do
    visit gltf_models_url
    click_on "Edit", match: :first

    fill_in "Global path", with: @gltf_model.global_path
    click_on "Update Gltf model"

    assert_text "Gltf model was successfully updated"
    click_on "Back"
  end

  test "destroying a Gltf model" do
    visit gltf_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gltf model was successfully destroyed"
  end
end
