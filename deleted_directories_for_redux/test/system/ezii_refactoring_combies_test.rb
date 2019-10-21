# typed: false
require "application_system_test_case"

class EziiRefactoringCombiesTest < ApplicationSystemTestCase
  setup do
    @ezii_refactoring_comby = ezii_refactoring_combies(:one)
  end

  test "visiting the index" do
    visit ezii_refactoring_combies_url
    assert_selector "h1", text: "Ezii Refactoring Combies"
  end

  test "creating a Ezii refactoring comby" do
    visit ezii_refactoring_combies_url
    click_on "New Ezii Refactoring Comby"

    fill_in "Text", with: @ezii_refactoring_comby.text
    fill_in "Url", with: @ezii_refactoring_comby.url
    click_on "Create Ezii refactoring comby"

    assert_text "Ezii refactoring comby was successfully created"
    click_on "Back"
  end

  test "updating a Ezii refactoring comby" do
    visit ezii_refactoring_combies_url
    click_on "Edit", match: :first

    fill_in "Text", with: @ezii_refactoring_comby.text
    fill_in "Url", with: @ezii_refactoring_comby.url
    click_on "Update Ezii refactoring comby"

    assert_text "Ezii refactoring comby was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii refactoring comby" do
    visit ezii_refactoring_combies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii refactoring comby was successfully destroyed"
  end
end
