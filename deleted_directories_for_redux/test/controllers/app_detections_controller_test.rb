# typed: false
require 'test_helper'

class AppDetectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_detection = app_detections(:one)
  end

  test "should get index" do
    get app_detections_url
    assert_response :success
  end

  test "should get new" do
    get new_app_detection_url
    assert_response :success
  end

  test "should create app_detection" do
    assert_difference('AppDetection.count') do
      post app_detections_url, params: { app_detection: { app_type: @app_detection.app_type, strategy: @app_detection.strategy } }
    end

    assert_redirected_to app_detection_url(AppDetection.last)
  end

  test "should show app_detection" do
    get app_detection_url(@app_detection)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_detection_url(@app_detection)
    assert_response :success
  end

  test "should update app_detection" do
    patch app_detection_url(@app_detection), params: { app_detection: { app_type: @app_detection.app_type, strategy: @app_detection.strategy } }
    assert_redirected_to app_detection_url(@app_detection)
  end

  test "should destroy app_detection" do
    assert_difference('AppDetection.count', -1) do
      delete app_detection_url(@app_detection)
    end

    assert_redirected_to app_detections_url
  end
end
