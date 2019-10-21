# typed: false
require "application_system_test_case"

class Banal::BrainstormsTest < ApplicationSystemTestCase
  setup do
    @banal_brainstorm = banal_brainstorms(:one)
  end

  test "visiting the index" do
    visit banal_brainstorms_url
    assert_selector "h1", text: "Banal/Brainstorms"
  end

  test "creating a Brainstorm" do
    visit banal_brainstorms_url
    click_on "New Banal/Brainstorm"

    fill_in "Comments", with: @banal_brainstorm.comments
    fill_in "Idea", with: @banal_brainstorm.idea
    fill_in "Idea owner", with: @banal_brainstorm.idea_owner
    fill_in "Main category", with: @banal_brainstorm.main_category
    fill_in "Priority", with: @banal_brainstorm.priority
    fill_in "Status", with: @banal_brainstorm.status
    click_on "Create Brainstorm"

    assert_text "Brainstorm was successfully created"
    click_on "Back"
  end

  test "updating a Brainstorm" do
    visit banal_brainstorms_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @banal_brainstorm.comments
    fill_in "Idea", with: @banal_brainstorm.idea
    fill_in "Idea owner", with: @banal_brainstorm.idea_owner
    fill_in "Main category", with: @banal_brainstorm.main_category
    fill_in "Priority", with: @banal_brainstorm.priority
    fill_in "Status", with: @banal_brainstorm.status
    click_on "Update Brainstorm"

    assert_text "Brainstorm was successfully updated"
    click_on "Back"
  end

  test "destroying a Brainstorm" do
    visit banal_brainstorms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Brainstorm was successfully destroyed"
  end
end
