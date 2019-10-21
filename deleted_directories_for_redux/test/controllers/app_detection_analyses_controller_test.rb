# typed: false
require 'test_helper'

class AppDetectionAnalysesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_detection_analysis = app_detection_analyses(:one)
  end

  test "should get index" do
    get app_detection_analyses_url
    assert_response :success
  end

  test "should get new" do
    get new_app_detection_analysis_url
    assert_response :success
  end

  test "should create app_detection_analysis" do
    assert_difference('AppDetectionAnalysis.count') do
      post app_detection_analyses_url, params: { app_detection_analysis: { app_detection_id: @app_detection_analysis.app_detection_id, confidence: @app_detection_analysis.confidence } }
    end

    assert_redirected_to app_detection_analysis_url(AppDetectionAnalysis.last)
  end

  test "should show app_detection_analysis" do
    get app_detection_analysis_url(@app_detection_analysis)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_detection_analysis_url(@app_detection_analysis)
    assert_response :success
  end

  test "should update app_detection_analysis" do
    patch app_detection_analysis_url(@app_detection_analysis), params: { app_detection_analysis: { app_detection_id: @app_detection_analysis.app_detection_id, confidence: @app_detection_analysis.confidence } }
    assert_redirected_to app_detection_analysis_url(@app_detection_analysis)
  end

  test "should destroy app_detection_analysis" do
    assert_difference('AppDetectionAnalysis.count', -1) do
      delete app_detection_analysis_url(@app_detection_analysis)
    end

    assert_redirected_to app_detection_analyses_url
  end
end
