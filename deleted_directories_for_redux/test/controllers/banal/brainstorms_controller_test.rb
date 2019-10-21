# typed: false
require 'test_helper'

class Banal::BrainstormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_brainstorm = banal_brainstorms(:one)
  end

  test "should get index" do
    get banal_brainstorms_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_brainstorm_url
    assert_response :success
  end

  test "should create banal_brainstorm" do
    assert_difference('Banal::Brainstorm.count') do
      post banal_brainstorms_url, params: { banal_brainstorm: { comments: @banal_brainstorm.comments, idea: @banal_brainstorm.idea, idea_owner: @banal_brainstorm.idea_owner, main_category: @banal_brainstorm.main_category, priority: @banal_brainstorm.priority, status: @banal_brainstorm.status } }
    end

    assert_redirected_to banal_brainstorm_url(Banal::Brainstorm.last)
  end

  test "should show banal_brainstorm" do
    get banal_brainstorm_url(@banal_brainstorm)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_brainstorm_url(@banal_brainstorm)
    assert_response :success
  end

  test "should update banal_brainstorm" do
    patch banal_brainstorm_url(@banal_brainstorm), params: { banal_brainstorm: { comments: @banal_brainstorm.comments, idea: @banal_brainstorm.idea, idea_owner: @banal_brainstorm.idea_owner, main_category: @banal_brainstorm.main_category, priority: @banal_brainstorm.priority, status: @banal_brainstorm.status } }
    assert_redirected_to banal_brainstorm_url(@banal_brainstorm)
  end

  test "should destroy banal_brainstorm" do
    assert_difference('Banal::Brainstorm.count', -1) do
      delete banal_brainstorm_url(@banal_brainstorm)
    end

    assert_redirected_to banal_brainstorms_url
  end
end
