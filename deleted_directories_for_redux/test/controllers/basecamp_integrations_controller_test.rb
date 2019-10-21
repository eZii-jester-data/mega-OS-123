# typed: false
require 'test_helper'

class BasecampIntegrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basecamp_integration = basecamp_integrations(:one)
  end

  test "should get index" do
    get basecamp_integrations_url
    assert_response :success
  end

  test "should get new" do
    get new_basecamp_integration_url
    assert_response :success
  end

  test "should create basecamp_integration" do
    assert_difference('BasecampIntegration.count') do
      post basecamp_integrations_url, params: { basecamp_integration: { code: @basecamp_integration.code, description: @basecamp_integration.description } }
    end

    assert_redirected_to basecamp_integration_url(BasecampIntegration.last)
  end

  test "should show basecamp_integration" do
    get basecamp_integration_url(@basecamp_integration)
    assert_response :success
  end

  test "should get edit" do
    get edit_basecamp_integration_url(@basecamp_integration)
    assert_response :success
  end

  test "should update basecamp_integration" do
    patch basecamp_integration_url(@basecamp_integration), params: { basecamp_integration: { code: @basecamp_integration.code, description: @basecamp_integration.description } }
    assert_redirected_to basecamp_integration_url(@basecamp_integration)
  end

  test "should destroy basecamp_integration" do
    assert_difference('BasecampIntegration.count', -1) do
      delete basecamp_integration_url(@basecamp_integration)
    end

    assert_redirected_to basecamp_integrations_url
  end
end
