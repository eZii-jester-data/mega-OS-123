# typed: false
require 'test_helper'

class MercurialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mercurial = mercurials(:one)
  end

  test "should get index" do
    get mercurials_url
    assert_response :success
  end

  test "should get new" do
    get new_mercurial_url
    assert_response :success
  end

  test "should create mercurial" do
    assert_difference('Mercurial.count') do
      post mercurials_url, params: { mercurial: { detected_app_type: @mercurial.detected_app_type, ezii_os_global_path: @mercurial.ezii_os_global_path, level: @mercurial.level } }
    end

    assert_redirected_to mercurial_url(Mercurial.last)
  end

  test "should show mercurial" do
    get mercurial_url(@mercurial)
    assert_response :success
  end

  test "should get edit" do
    get edit_mercurial_url(@mercurial)
    assert_response :success
  end

  test "should update mercurial" do
    patch mercurial_url(@mercurial), params: { mercurial: { detected_app_type: @mercurial.detected_app_type, ezii_os_global_path: @mercurial.ezii_os_global_path, level: @mercurial.level } }
    assert_redirected_to mercurial_url(@mercurial)
  end

  test "should destroy mercurial" do
    assert_difference('Mercurial.count', -1) do
      delete mercurial_url(@mercurial)
    end

    assert_redirected_to mercurials_url
  end
end
