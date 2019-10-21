# typed: false
require "application_system_test_case"

class EziiRobotExperimentsTest < ApplicationSystemTestCase
  setup do
    @ezii_robot_experiment = ezii_robot_experiments(:one)
  end

  test "visiting the index" do
    visit ezii_robot_experiments_url
    assert_selector "h1", text: "Ezii Robot Experiments"
  end

  test "creating a Ezii robot experiment" do
    visit ezii_robot_experiments_url
    click_on "New Ezii Robot Experiment"

    click_on "Create Ezii robot experiment"

    assert_text "Ezii robot experiment was successfully created"
    click_on "Back"
  end

  test "updating a Ezii robot experiment" do
    visit ezii_robot_experiments_url
    click_on "Edit", match: :first

    click_on "Update Ezii robot experiment"

    assert_text "Ezii robot experiment was successfully updated"
    click_on "Back"
  end

  test "destroying a Ezii robot experiment" do
    visit ezii_robot_experiments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ezii robot experiment was successfully destroyed"
  end
end
