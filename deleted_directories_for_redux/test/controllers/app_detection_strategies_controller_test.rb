# typed: false
require 'test_helper'

class AppDetectionStrategiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_detection_strategy = app_detection_strategies(:one)
  end

  test "should get index" do
    get app_detection_strategies_url
    assert_response :success
  end

  test "should get new" do
    get new_app_detection_strategy_url
    assert_response :success
  end

  test "should create app_detection_strategy" do
    assert_difference('AppDetectionStrategy.count') do
      post app_detection_strategies_url, params: { app_detection_strategy: { app_detection_id: @app_detection_strategy.app_detection_id, implementation_in_ruby_dsl: @app_detection_strategy.implementation_in_ruby_dsl } }
    end

    assert_redirected_to app_detection_strategy_url(AppDetectionStrategy.last)
  end

  test "should show app_detection_strategy" do
    get app_detection_strategy_url(@app_detection_strategy)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_detection_strategy_url(@app_detection_strategy)
    assert_response :success
  end

  test "should update app_detection_strategy" do
    patch app_detection_strategy_url(@app_detection_strategy), params: { app_detection_strategy: { app_detection_id: @app_detection_strategy.app_detection_id, implementation_in_ruby_dsl: @app_detection_strategy.implementation_in_ruby_dsl } }
    assert_redirected_to app_detection_strategy_url(@app_detection_strategy)
  end

  test "should destroy app_detection_strategy" do
    assert_difference('AppDetectionStrategy.count', -1) do
      delete app_detection_strategy_url(@app_detection_strategy)
    end

    assert_redirected_to app_detection_strategies_url
  end
end
