# typed: false
require 'test_helper'

class EziiDeltaDirectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_delta_direction = ezii_delta_directions(:one)
  end

  test "should get index" do
    get ezii_delta_directions_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_delta_direction_url
    assert_response :success
  end

  test "should create ezii_delta_direction" do
    assert_difference('EziiDeltaDirection.count') do
      post ezii_delta_directions_url, params: { ezii_delta_direction: { direction_y: @ezii_delta_direction.direction_y, ezii_delta_git_id: @ezii_delta_direction.ezii_delta_git_id } }
    end

    assert_redirected_to ezii_delta_direction_url(EziiDeltaDirection.last)
  end

  test "should show ezii_delta_direction" do
    get ezii_delta_direction_url(@ezii_delta_direction)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_delta_direction_url(@ezii_delta_direction)
    assert_response :success
  end

  test "should update ezii_delta_direction" do
    patch ezii_delta_direction_url(@ezii_delta_direction), params: { ezii_delta_direction: { direction_y: @ezii_delta_direction.direction_y, ezii_delta_git_id: @ezii_delta_direction.ezii_delta_git_id } }
    assert_redirected_to ezii_delta_direction_url(@ezii_delta_direction)
  end

  test "should destroy ezii_delta_direction" do
    assert_difference('EziiDeltaDirection.count', -1) do
      delete ezii_delta_direction_url(@ezii_delta_direction)
    end

    assert_redirected_to ezii_delta_directions_url
  end
end
