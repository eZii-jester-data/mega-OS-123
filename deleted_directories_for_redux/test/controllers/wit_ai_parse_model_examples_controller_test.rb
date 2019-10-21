# typed: false
require 'test_helper'

class WitAiParseModelExamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wit_ai_parse_model_example = wit_ai_parse_model_examples(:one)
  end

  test "should get index" do
    get wit_ai_parse_model_examples_url
    assert_response :success
  end

  test "should get new" do
    get new_wit_ai_parse_model_example_url
    assert_response :success
  end

  test "should create wit_ai_parse_model_example" do
    assert_difference('WitAiParseModelExample.count') do
      post wit_ai_parse_model_examples_url, params: { wit_ai_parse_model_example: { wit_ai_parse_model_id: @wit_ai_parse_model_example.wit_ai_parse_model_id } }
    end

    assert_redirected_to wit_ai_parse_model_example_url(WitAiParseModelExample.last)
  end

  test "should show wit_ai_parse_model_example" do
    get wit_ai_parse_model_example_url(@wit_ai_parse_model_example)
    assert_response :success
  end

  test "should get edit" do
    get edit_wit_ai_parse_model_example_url(@wit_ai_parse_model_example)
    assert_response :success
  end

  test "should update wit_ai_parse_model_example" do
    patch wit_ai_parse_model_example_url(@wit_ai_parse_model_example), params: { wit_ai_parse_model_example: { wit_ai_parse_model_id: @wit_ai_parse_model_example.wit_ai_parse_model_id } }
    assert_redirected_to wit_ai_parse_model_example_url(@wit_ai_parse_model_example)
  end

  test "should destroy wit_ai_parse_model_example" do
    assert_difference('WitAiParseModelExample.count', -1) do
      delete wit_ai_parse_model_example_url(@wit_ai_parse_model_example)
    end

    assert_redirected_to wit_ai_parse_model_examples_url
  end
end
