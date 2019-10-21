# typed: false
require 'test_helper'

class WitAiParseModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wit_ai_parse_model = wit_ai_parse_models(:one)
  end

  test "should get index" do
    get wit_ai_parse_models_url
    assert_response :success
  end

  test "should get new" do
    get new_wit_ai_parse_model_url
    assert_response :success
  end

  test "should create wit_ai_parse_model" do
    assert_difference('WitAiParseModel.count') do
      post wit_ai_parse_models_url, params: { wit_ai_parse_model: { wit_ai_client_token: @wit_ai_parse_model.wit_ai_client_token, wit_ai_server_token: @wit_ai_parse_model.wit_ai_server_token } }
    end

    assert_redirected_to wit_ai_parse_model_url(WitAiParseModel.last)
  end

  test "should show wit_ai_parse_model" do
    get wit_ai_parse_model_url(@wit_ai_parse_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_wit_ai_parse_model_url(@wit_ai_parse_model)
    assert_response :success
  end

  test "should update wit_ai_parse_model" do
    patch wit_ai_parse_model_url(@wit_ai_parse_model), params: { wit_ai_parse_model: { wit_ai_client_token: @wit_ai_parse_model.wit_ai_client_token, wit_ai_server_token: @wit_ai_parse_model.wit_ai_server_token } }
    assert_redirected_to wit_ai_parse_model_url(@wit_ai_parse_model)
  end

  test "should destroy wit_ai_parse_model" do
    assert_difference('WitAiParseModel.count', -1) do
      delete wit_ai_parse_model_url(@wit_ai_parse_model)
    end

    assert_redirected_to wit_ai_parse_models_url
  end
end
