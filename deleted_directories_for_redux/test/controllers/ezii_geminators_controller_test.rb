# typed: false
require 'test_helper'

class EziiGeminatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_geminator = ezii_geminators(:one)
  end

  test "should get index" do
    get ezii_geminators_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_geminator_url
    assert_response :success
  end

  test "should create ezii_geminator" do
    assert_difference('EziiGeminator.count') do
      post ezii_geminators_url, params: { ezii_geminator: { graphql_query_text: @ezii_geminator.graphql_query_text, url_text: @ezii_geminator.url_text } }
    end

    assert_redirected_to ezii_geminator_url(EziiGeminator.last)
  end

  test "should show ezii_geminator" do
    get ezii_geminator_url(@ezii_geminator)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_geminator_url(@ezii_geminator)
    assert_response :success
  end

  test "should update ezii_geminator" do
    patch ezii_geminator_url(@ezii_geminator), params: { ezii_geminator: { graphql_query_text: @ezii_geminator.graphql_query_text, url_text: @ezii_geminator.url_text } }
    assert_redirected_to ezii_geminator_url(@ezii_geminator)
  end

  test "should destroy ezii_geminator" do
    assert_difference('EziiGeminator.count', -1) do
      delete ezii_geminator_url(@ezii_geminator)
    end

    assert_redirected_to ezii_geminators_url
  end
end
