# typed: false
require 'test_helper'

class EziiRobotExperimentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_robot_experiment = ezii_robot_experiments(:one)
  end

  test "should get index" do
    get ezii_robot_experiments_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_robot_experiment_url
    assert_response :success
  end

  test "should create ezii_robot_experiment" do
    assert_difference('EziiRobotExperiment.count') do
      post ezii_robot_experiments_url, params: { ezii_robot_experiment: {  } }
    end

    assert_redirected_to ezii_robot_experiment_url(EziiRobotExperiment.last)
  end

  test "should show ezii_robot_experiment" do
    get ezii_robot_experiment_url(@ezii_robot_experiment)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_robot_experiment_url(@ezii_robot_experiment)
    assert_response :success
  end

  test "should update ezii_robot_experiment" do
    patch ezii_robot_experiment_url(@ezii_robot_experiment), params: { ezii_robot_experiment: {  } }
    assert_redirected_to ezii_robot_experiment_url(@ezii_robot_experiment)
  end

  test "should destroy ezii_robot_experiment" do
    assert_difference('EziiRobotExperiment.count', -1) do
      delete ezii_robot_experiment_url(@ezii_robot_experiment)
    end

    assert_redirected_to ezii_robot_experiments_url
  end
end
