# typed: false
require 'test_helper'

class KmzModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kmz_model = kmz_models(:one)
  end

  test "should get index" do
    get kmz_models_url
    assert_response :success
  end

  test "should get new" do
    get new_kmz_model_url
    assert_response :success
  end

  test "should create kmz_model" do
    assert_difference('KmzModel.count') do
      post kmz_models_url, params: { kmz_model: { description: @kmz_model.description, global_path: @kmz_model.global_path } }
    end

    assert_redirected_to kmz_model_url(KmzModel.last)
  end

  test "should show kmz_model" do
    get kmz_model_url(@kmz_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_kmz_model_url(@kmz_model)
    assert_response :success
  end

  test "should update kmz_model" do
    patch kmz_model_url(@kmz_model), params: { kmz_model: { description: @kmz_model.description, global_path: @kmz_model.global_path } }
    assert_redirected_to kmz_model_url(@kmz_model)
  end

  test "should destroy kmz_model" do
    assert_difference('KmzModel.count', -1) do
      delete kmz_model_url(@kmz_model)
    end

    assert_redirected_to kmz_models_url
  end
end
