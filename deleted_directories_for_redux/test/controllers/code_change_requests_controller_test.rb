# typed: false
require 'test_helper'

class CodeChangeRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_change_request = code_change_requests(:one)
  end

  test "should get index" do
    get code_change_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_code_change_request_url
    assert_response :success
  end

  test "should create code_change_request" do
    assert_difference('CodeChangeRequest.count') do
      post code_change_requests_url, params: { code_change_request: { text: @code_change_request.text } }
    end

    assert_redirected_to code_change_request_url(CodeChangeRequest.last)
  end

  test "should show code_change_request" do
    get code_change_request_url(@code_change_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_change_request_url(@code_change_request)
    assert_response :success
  end

  test "should update code_change_request" do
    patch code_change_request_url(@code_change_request), params: { code_change_request: { text: @code_change_request.text } }
    assert_redirected_to code_change_request_url(@code_change_request)
  end

  test "should destroy code_change_request" do
    assert_difference('CodeChangeRequest.count', -1) do
      delete code_change_request_url(@code_change_request)
    end

    assert_redirected_to code_change_requests_url
  end
end
