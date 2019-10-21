# typed: false
require "application_system_test_case"

class CodeLinksTest < ApplicationSystemTestCase
  setup do
    @code_link = code_links(:one)
  end

  test "visiting the index" do
    visit code_links_url
    assert_selector "h1", text: "Code Links"
  end

  test "creating a Code link" do
    visit code_links_url
    click_on "New Code Link"

    fill_in "Code link type", with: @code_link.code_link_type_id
    fill_in "Description", with: @code_link.description
    fill_in "Link", with: @code_link.link
    click_on "Create Code link"

    assert_text "Code link was successfully created"
    click_on "Back"
  end

  test "updating a Code link" do
    visit code_links_url
    click_on "Edit", match: :first

    fill_in "Code link type", with: @code_link.code_link_type_id
    fill_in "Description", with: @code_link.description
    fill_in "Link", with: @code_link.link
    click_on "Update Code link"

    assert_text "Code link was successfully updated"
    click_on "Back"
  end

  test "destroying a Code link" do
    visit code_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code link was successfully destroyed"
  end
end
