# typed: false
require 'test_helper'

class CodeLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_link = code_links(:one)
  end

  test "should get index" do
    get code_links_url
    assert_response :success
  end

  test "should get new" do
    get new_code_link_url
    assert_response :success
  end

  test "should create code_link" do
    assert_difference('CodeLink.count') do
      post code_links_url, params: { code_link: { code_link_type_id: @code_link.code_link_type_id, description: @code_link.description, link: @code_link.link } }
    end

    assert_redirected_to code_link_url(CodeLink.last)
  end

  test "should show code_link" do
    get code_link_url(@code_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_link_url(@code_link)
    assert_response :success
  end

  test "should update code_link" do
    patch code_link_url(@code_link), params: { code_link: { code_link_type_id: @code_link.code_link_type_id, description: @code_link.description, link: @code_link.link } }
    assert_redirected_to code_link_url(@code_link)
  end

  test "should destroy code_link" do
    assert_difference('CodeLink.count', -1) do
      delete code_link_url(@code_link)
    end

    assert_redirected_to code_links_url
  end
end
