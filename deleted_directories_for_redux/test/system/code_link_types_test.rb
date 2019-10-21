# typed: false
require "application_system_test_case"

class CodeLinkTypesTest < ApplicationSystemTestCase
  setup do
    @code_link_type = code_link_types(:one)
  end

  test "visiting the index" do
    visit code_link_types_url
    assert_selector "h1", text: "Code Link Types"
  end

  test "creating a Code link type" do
    visit code_link_types_url
    click_on "New Code Link Type"

    fill_in "Type description", with: @code_link_type.type_description
    fill_in "Type", with: @code_link_type.type_id
    click_on "Create Code link type"

    assert_text "Code link type was successfully created"
    click_on "Back"
  end

  test "updating a Code link type" do
    visit code_link_types_url
    click_on "Edit", match: :first

    fill_in "Type description", with: @code_link_type.type_description
    fill_in "Type", with: @code_link_type.type_id
    click_on "Update Code link type"

    assert_text "Code link type was successfully updated"
    click_on "Back"
  end

  test "destroying a Code link type" do
    visit code_link_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code link type was successfully destroyed"
  end
end
