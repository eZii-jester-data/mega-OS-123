# typed: false
require 'test_helper'

class UserTextCopiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_text_copy = user_text_copies(:one)
  end

  test "should get index" do
    get user_text_copies_url
    assert_response :success
  end

  test "should get new" do
    get new_user_text_copy_url
    assert_response :success
  end

  test "should create user_text_copy" do
    assert_difference('UserTextCopy.count') do
      post user_text_copies_url, params: { user_text_copy: { copies: @user_text_copy.copies, ezii_adult_verify_and_signin_id: @user_text_copy.ezii_adult_verify_and_signin_id } }
    end

    assert_redirected_to user_text_copy_url(UserTextCopy.last)
  end

  test "should show user_text_copy" do
    get user_text_copy_url(@user_text_copy)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_text_copy_url(@user_text_copy)
    assert_response :success
  end

  test "should update user_text_copy" do
    patch user_text_copy_url(@user_text_copy), params: { user_text_copy: { copies: @user_text_copy.copies, ezii_adult_verify_and_signin_id: @user_text_copy.ezii_adult_verify_and_signin_id } }
    assert_redirected_to user_text_copy_url(@user_text_copy)
  end

  test "should destroy user_text_copy" do
    assert_difference('UserTextCopy.count', -1) do
      delete user_text_copy_url(@user_text_copy)
    end

    assert_redirected_to user_text_copies_url
  end
end
