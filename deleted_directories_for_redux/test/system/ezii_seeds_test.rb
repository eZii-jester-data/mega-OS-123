# typed: false
require "application_system_test_case"

class EziiSeedsTest < ApplicationSystemTestCase
  setup do
    @ezii_seed = ezii_seeds(:one)
  end

  test "visiting the index" do
    visit ezii_seeds_url
    assert_selector "h1", text: "Ezii Seeds"
  end

  test "creating a Ezii seed" do
    visit ezii_seeds_url
    click_on "New Ezii Seed"

    fill_in "Description", with: @ezii_seed.description
    fill_in "Gist link", with: @ezii_seed.gist_link
    fill_in "Github link", with: @ezii_seed.github_link
    click_on "Create Ezii seed"

    assert_text "Ezii seed was successfully created"
    click_on "Back"
  end

  test "updating a Ezii seed" do
    visit ezii_seeds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ezii_seed.description
    fill_in "Gist link", with: @ezii_seed.gist_link
    fill_in "Github link", with: @ezii_seed.github_link
    click_on "Update Ezii seed"

    assert_text "Ezii seed was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii seed" do
    visit ezii_seeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii seed was successfully destroyed"
  end
end
