# typed: false
require 'test_helper'

class GltfModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gltf_model = gltf_models(:one)
  end

  test "should get index" do
    get gltf_models_url
    assert_response :success
  end

  test "should get new" do
    get new_gltf_model_url
    assert_response :success
  end

  test "should create gltf_model" do
    assert_difference('GltfModel.count') do
      post gltf_models_url, params: { gltf_model: { global_path: @gltf_model.global_path } }
    end

    assert_redirected_to gltf_model_url(GltfModel.last)
  end

  test "should show gltf_model" do
    get gltf_model_url(@gltf_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_gltf_model_url(@gltf_model)
    assert_response :success
  end

  test "should update gltf_model" do
    patch gltf_model_url(@gltf_model), params: { gltf_model: { global_path: @gltf_model.global_path } }
    assert_redirected_to gltf_model_url(@gltf_model)
  end

  test "should destroy gltf_model" do
    assert_difference('GltfModel.count', -1) do
      delete gltf_model_url(@gltf_model)
    end

    assert_redirected_to gltf_models_url
  end
end
