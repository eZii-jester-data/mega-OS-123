# typed: false
require 'test_helper'

class Banal::ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_project = banal_projects(:one)
  end

  test "should get index" do
    get banal_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_project_url
    assert_response :success
  end

  test "should create banal_project" do
    assert_difference('Banal::Project.count') do
      post banal_projects_url, params: { banal_project: { comments: @banal_project.comments, dev_budget_cost: @banal_project.dev_budget_cost, idea_owner: @banal_project.idea_owner, launch_date: @banal_project.launch_date, main_category: @banal_project.main_category, name: @banal_project.name, priority: @banal_project.priority, project_manager: @banal_project.project_manager, status: @banal_project.status } }
    end

    assert_redirected_to banal_project_url(Banal::Project.last)
  end

  test "should show banal_project" do
    get banal_project_url(@banal_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_project_url(@banal_project)
    assert_response :success
  end

  test "should update banal_project" do
    patch banal_project_url(@banal_project), params: { banal_project: { comments: @banal_project.comments, dev_budget_cost: @banal_project.dev_budget_cost, idea_owner: @banal_project.idea_owner, launch_date: @banal_project.launch_date, main_category: @banal_project.main_category, name: @banal_project.name, priority: @banal_project.priority, project_manager: @banal_project.project_manager, status: @banal_project.status } }
    assert_redirected_to banal_project_url(@banal_project)
  end

  test "should destroy banal_project" do
    assert_difference('Banal::Project.count', -1) do
      delete banal_project_url(@banal_project)
    end

    assert_redirected_to banal_projects_url
  end
end
