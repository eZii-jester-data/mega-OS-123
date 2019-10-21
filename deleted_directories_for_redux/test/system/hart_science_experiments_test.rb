# typed: false
require "application_system_test_case"

class HartScienceExperimentsTest < ApplicationSystemTestCase
  setup do
    @hart_science_experiment = hart_science_experiments(:one)
  end

  test "visiting the index" do
    visit hart_science_experiments_url
    assert_selector "h1", text: "Hart Science Experiments"
  end

  test "creating a Hart science experiment" do
    visit hart_science_experiments_url
    click_on "New Hart Science Experiment"

    fill_in "Text", with: @hart_science_experiment.text
    fill_in "Url", with: @hart_science_experiment.url
    click_on "Create Hart science experiment"

    assert_text "Hart science experiment was successfully created"
    click_on "Back"
  end

  test "updating a Hart science experiment" do
    visit hart_science_experiments_url
    click_on "Edit", match: :first

    fill_in "Text", with: @hart_science_experiment.text
    fill_in "Url", with: @hart_science_experiment.url
    click_on "Update Hart science experiment"

    assert_text "Hart science experiment was successfully updated"
    click_on "Back"
  end

  test "destroying a Hart science experiment" do
    visit hart_science_experiments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hart science experiment was successfully destroyed"
  end
end
