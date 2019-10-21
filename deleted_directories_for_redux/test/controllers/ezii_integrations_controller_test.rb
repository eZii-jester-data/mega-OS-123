# typed: false
require 'test_helper'

class EziiIntegrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_integration = ezii_integrations(:one)
  end

  test "should get index" do
    get ezii_integrations_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_integration_url
    assert_response :success
  end

  test "should create ezii_integration" do
    assert_difference('EziiIntegration.count') do
      post ezii_integrations_url, params: { ezii_integration: {  } }
    end

    assert_redirected_to ezii_integration_url(EziiIntegration.last)
  end

  test "should show ezii_integration" do
    get ezii_integration_url(@ezii_integration)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_integration_url(@ezii_integration)
    assert_response :success
  end

  test "should update ezii_integration" do
    patch ezii_integration_url(@ezii_integration), params: { ezii_integration: {  } }
    assert_redirected_to ezii_integration_url(@ezii_integration)
  end

  test "should destroy ezii_integration" do
    assert_difference('EziiIntegration.count', -1) do
      delete ezii_integration_url(@ezii_integration)
    end

    assert_redirected_to ezii_integrations_url
  end
end
