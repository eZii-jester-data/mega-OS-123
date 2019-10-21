# typed: false
require 'test_helper'

class EziiDeltaGitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_delta_git = ezii_delta_gits(:one)
  end

  test "should get index" do
    get ezii_delta_gits_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_delta_git_url
    assert_response :success
  end

  test "should create ezii_delta_git" do
    assert_difference('EziiDeltaGit.count') do
      post ezii_delta_gits_url, params: { ezii_delta_git: { git: @ezii_delta_git.git, git_commit_created_at: @ezii_delta_git.git_commit_created_at, github_commit_link: @ezii_delta_git.github_commit_link } }
    end

    assert_redirected_to ezii_delta_git_url(EziiDeltaGit.last)
  end

  test "should show ezii_delta_git" do
    get ezii_delta_git_url(@ezii_delta_git)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_delta_git_url(@ezii_delta_git)
    assert_response :success
  end

  test "should update ezii_delta_git" do
    patch ezii_delta_git_url(@ezii_delta_git), params: { ezii_delta_git: { git: @ezii_delta_git.git, git_commit_created_at: @ezii_delta_git.git_commit_created_at, github_commit_link: @ezii_delta_git.github_commit_link } }
    assert_redirected_to ezii_delta_git_url(@ezii_delta_git)
  end

  test "should destroy ezii_delta_git" do
    assert_difference('EziiDeltaGit.count', -1) do
      delete ezii_delta_git_url(@ezii_delta_git)
    end

    assert_redirected_to ezii_delta_gits_url
  end
end
