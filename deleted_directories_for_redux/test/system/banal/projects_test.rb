# typed: false
require "application_system_test_case"

class Banal::ProjectsTest < ApplicationSystemTestCase
  setup do
    @banal_project = banal_projects(:one)
  end

  test "visiting the index" do
    visit banal_projects_url
    assert_selector "h1", text: "Banal/Projects"
  end

  test "creating a Project" do
    visit banal_projects_url
    click_on "New Banal/Project"

    fill_in "Comments", with: @banal_project.comments
    fill_in "Dev budget cost", with: @banal_project.dev_budget_cost
    fill_in "Idea owner", with: @banal_project.idea_owner
    fill_in "Launch date", with: @banal_project.launch_date
    fill_in "Main category", with: @banal_project.main_category
    fill_in "Name", with: @banal_project.name
    fill_in "Priority", with: @banal_project.priority
    fill_in "Project manager", with: @banal_project.project_manager
    fill_in "Status", with: @banal_project.status
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit banal_projects_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @banal_project.comments
    fill_in "Dev budget cost", with: @banal_project.dev_budget_cost
    fill_in "Idea owner", with: @banal_project.idea_owner
    fill_in "Launch date", with: @banal_project.launch_date
    fill_in "Main category", with: @banal_project.main_category
    fill_in "Name", with: @banal_project.name
    fill_in "Priority", with: @banal_project.priority
    fill_in "Project manager", with: @banal_project.project_manager
    fill_in "Status", with: @banal_project.status
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit banal_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
