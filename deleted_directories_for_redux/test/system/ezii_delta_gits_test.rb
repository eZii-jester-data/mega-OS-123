# typed: false
require "application_system_test_case"

class EziiDeltaGitsTest < ApplicationSystemTestCase
  setup do
    @ezii_delta_git = ezii_delta_gits(:one)
  end

  test "visiting the index" do
    visit ezii_delta_gits_url
    assert_selector "h1", text: "Ezii Delta Gits"
  end

  test "creating a Ezii delta git" do
    visit ezii_delta_gits_url
    click_on "New Ezii Delta Git"

    fill_in "Git", with: @ezii_delta_git.git
    fill_in "Git commit created at", with: @ezii_delta_git.git_commit_created_at
    fill_in "Github commit link", with: @ezii_delta_git.github_commit_link
    click_on "Create Ezii delta git"

    assert_text "Ezii delta git was successfully created"
    click_on "Back"
  end

  test "updating a Ezii delta git" do
    visit ezii_delta_gits_url
    click_on "Edit", match: :first

    fill_in "Git", with: @ezii_delta_git.git
    fill_in "Git commit created at", with: @ezii_delta_git.git_commit_created_at
    fill_in "Github commit link", with: @ezii_delta_git.github_commit_link
    click_on "Update Ezii delta git"

    assert_text "Ezii delta git was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii delta git" do
    visit ezii_delta_gits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii delta git was successfully destroyed"
  end
end
