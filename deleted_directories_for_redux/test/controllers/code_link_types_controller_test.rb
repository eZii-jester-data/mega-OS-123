# typed: false
require 'test_helper'

class CodeLinkTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_link_type = code_link_types(:one)
  end

  test "should get index" do
    get code_link_types_url
    assert_response :success
  end

  test "should get new" do
    get new_code_link_type_url
    assert_response :success
  end

  test "should create code_link_type" do
    assert_difference('CodeLinkType.count') do
      post code_link_types_url, params: { code_link_type: { type_description: @code_link_type.type_description, type_id: @code_link_type.type_id } }
    end

    assert_redirected_to code_link_type_url(CodeLinkType.last)
  end

  test "should show code_link_type" do
    get code_link_type_url(@code_link_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_link_type_url(@code_link_type)
    assert_response :success
  end

  test "should update code_link_type" do
    patch code_link_type_url(@code_link_type), params: { code_link_type: { type_description: @code_link_type.type_description, type_id: @code_link_type.type_id } }
    assert_redirected_to code_link_type_url(@code_link_type)
  end

  test "should destroy code_link_type" do
    assert_difference('CodeLinkType.count', -1) do
      delete code_link_type_url(@code_link_type)
    end

    assert_redirected_to code_link_types_url
  end
end
