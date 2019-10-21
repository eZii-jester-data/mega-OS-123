# typed: false
require "application_system_test_case"

class BanalComplexesTest < ApplicationSystemTestCase
  setup do
    @banal_complex = banal_complexes(:one)
  end

  test "visiting the index" do
    visit banal_complexes_url
    assert_selector "h1", text: "Banal Complexes"
  end

  test "creating a Banal complex" do
    visit banal_complexes_url
    click_on "New Banal Complex"

    fill_in "Parent", with: @banal_complex.parent_id
    fill_in "Weight", with: @banal_complex.weight
    click_on "Create Banal complex"

    assert_text "Banal complex was successfully created"
    click_on "Back"
  end

  test "updating a Banal complex" do
    visit banal_complexes_url
    click_on "Edit", match: :first

    fill_in "Parent", with: @banal_complex.parent_id
    fill_in "Weight", with: @banal_complex.weight
    click_on "Update Banal complex"

    assert_text "Banal complex was successfully updated"
    click_on "Back"
  end

  test "destroying a Banal complex" do
    visit banal_complexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banal complex was successfully destroyed"
  end
end
