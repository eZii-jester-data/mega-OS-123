# typed: false
require 'test_helper'

class EziiZappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_zapping = ezii_zappings(:one)
  end

  test "should get index" do
    get ezii_zappings_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_zapping_url
    assert_response :success
  end

  test "should create ezii_zapping" do
    assert_difference('EziiZapping.count') do
      post ezii_zappings_url, params: { ezii_zapping: { next_url: @ezii_zapping.next_url, previous_url: @ezii_zapping.previous_url } }
    end

    assert_redirected_to ezii_zapping_url(EziiZapping.last)
  end

  test "should show ezii_zapping" do
    get ezii_zapping_url(@ezii_zapping)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_zapping_url(@ezii_zapping)
    assert_response :success
  end

  test "should update ezii_zapping" do
    patch ezii_zapping_url(@ezii_zapping), params: { ezii_zapping: { next_url: @ezii_zapping.next_url, previous_url: @ezii_zapping.previous_url } }
    assert_redirected_to ezii_zapping_url(@ezii_zapping)
  end

  test "should destroy ezii_zapping" do
    assert_difference('EziiZapping.count', -1) do
      delete ezii_zapping_url(@ezii_zapping)
    end

    assert_redirected_to ezii_zappings_url
  end
end
