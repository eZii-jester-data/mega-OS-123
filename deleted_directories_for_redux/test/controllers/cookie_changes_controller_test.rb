# typed: false
require 'test_helper'

class CookieChangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cookie_change = cookie_changes(:one)
  end

  test "should get index" do
    get cookie_changes_url
    assert_response :success
  end

  test "should get new" do
    get new_cookie_change_url
    assert_response :success
  end

  test "should create cookie_change" do
    assert_difference('CookieChange.count') do
      post cookie_changes_url, params: { cookie_change: { identifier: @cookie_change.identifier, value: @cookie_change.value } }
    end

    assert_redirected_to cookie_change_url(CookieChange.last)
  end

  test "should show cookie_change" do
    get cookie_change_url(@cookie_change)
    assert_response :success
  end

  test "should get edit" do
    get edit_cookie_change_url(@cookie_change)
    assert_response :success
  end

  test "should update cookie_change" do
    patch cookie_change_url(@cookie_change), params: { cookie_change: { identifier: @cookie_change.identifier, value: @cookie_change.value } }
    assert_redirected_to cookie_change_url(@cookie_change)
  end

  test "should destroy cookie_change" do
    assert_difference('CookieChange.count', -1) do
      delete cookie_change_url(@cookie_change)
    end

    assert_redirected_to cookie_changes_url
  end
end
