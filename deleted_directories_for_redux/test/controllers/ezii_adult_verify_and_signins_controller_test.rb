# typed: false
require 'test_helper'

class EziiAdultVerifyAndSigninsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_adult_verify_and_signin = ezii_adult_verify_and_signins(:one)
  end

  test "should get index" do
    get ezii_adult_verify_and_signins_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_adult_verify_and_signin_url
    assert_response :success
  end

  test "should create ezii_adult_verify_and_signin" do
    assert_difference('EziiAdultVerifyAndSignin.count') do
      post ezii_adult_verify_and_signins_url, params: { ezii_adult_verify_and_signin: { scm_id: @ezii_adult_verify_and_signin.scm_id, shell_script_used: @ezii_adult_verify_and_signin.shell_script_used, user_name: @ezii_adult_verify_and_signin.user_name, when_will_scm_scl011_be_available_as_rubygem_integration: @ezii_adult_verify_and_signin.when_will_scm_scl011_be_available_as_rubygem_integration } }
    end

    assert_redirected_to ezii_adult_verify_and_signin_url(EziiAdultVerifyAndSignin.last)
  end

  test "should show ezii_adult_verify_and_signin" do
    get ezii_adult_verify_and_signin_url(@ezii_adult_verify_and_signin)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_adult_verify_and_signin_url(@ezii_adult_verify_and_signin)
    assert_response :success
  end

  test "should update ezii_adult_verify_and_signin" do
    patch ezii_adult_verify_and_signin_url(@ezii_adult_verify_and_signin), params: { ezii_adult_verify_and_signin: { scm_id: @ezii_adult_verify_and_signin.scm_id, shell_script_used: @ezii_adult_verify_and_signin.shell_script_used, user_name: @ezii_adult_verify_and_signin.user_name, when_will_scm_scl011_be_available_as_rubygem_integration: @ezii_adult_verify_and_signin.when_will_scm_scl011_be_available_as_rubygem_integration } }
    assert_redirected_to ezii_adult_verify_and_signin_url(@ezii_adult_verify_and_signin)
  end

  test "should destroy ezii_adult_verify_and_signin" do
    assert_difference('EziiAdultVerifyAndSignin.count', -1) do
      delete ezii_adult_verify_and_signin_url(@ezii_adult_verify_and_signin)
    end

    assert_redirected_to ezii_adult_verify_and_signins_url
  end
end
