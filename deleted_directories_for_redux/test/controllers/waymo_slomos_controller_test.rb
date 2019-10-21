# typed: false
require 'test_helper'

class WaymoSlomosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waymo_slomo = waymo_slomos(:one)
  end

  test "should get index" do
    get waymo_slomos_url
    assert_response :success
  end

  test "should get new" do
    get new_waymo_slomo_url
    assert_response :success
  end

  test "should create waymo_slomo" do
    assert_difference('WaymoSlomo.count') do
      post waymo_slomos_url, params: { waymo_slomo: { banal_brainstorm_id: @waymo_slomo.banal_brainstorm_id } }
    end

    assert_redirected_to waymo_slomo_url(WaymoSlomo.last)
  end

  test "should show waymo_slomo" do
    get waymo_slomo_url(@waymo_slomo)
    assert_response :success
  end

  test "should get edit" do
    get edit_waymo_slomo_url(@waymo_slomo)
    assert_response :success
  end

  test "should update waymo_slomo" do
    patch waymo_slomo_url(@waymo_slomo), params: { waymo_slomo: { banal_brainstorm_id: @waymo_slomo.banal_brainstorm_id } }
    assert_redirected_to waymo_slomo_url(@waymo_slomo)
  end

  test "should destroy waymo_slomo" do
    assert_difference('WaymoSlomo.count', -1) do
      delete waymo_slomo_url(@waymo_slomo)
    end

    assert_redirected_to waymo_slomos_url
  end
end
