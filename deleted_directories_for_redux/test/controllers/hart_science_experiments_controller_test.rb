# typed: false
require 'test_helper'

class HartScienceExperimentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hart_science_experiment = hart_science_experiments(:one)
  end

  test "should get index" do
    get hart_science_experiments_url
    assert_response :success
  end

  test "should get new" do
    get new_hart_science_experiment_url
    assert_response :success
  end

  test "should create hart_science_experiment" do
    assert_difference('HartScienceExperiment.count') do
      post hart_science_experiments_url, params: { hart_science_experiment: { text: @hart_science_experiment.text, url: @hart_science_experiment.url } }
    end

    assert_redirected_to hart_science_experiment_url(HartScienceExperiment.last)
  end

  test "should show hart_science_experiment" do
    get hart_science_experiment_url(@hart_science_experiment)
    assert_response :success
  end

  test "should get edit" do
    get edit_hart_science_experiment_url(@hart_science_experiment)
    assert_response :success
  end

  test "should update hart_science_experiment" do
    patch hart_science_experiment_url(@hart_science_experiment), params: { hart_science_experiment: { text: @hart_science_experiment.text, url: @hart_science_experiment.url } }
    assert_redirected_to hart_science_experiment_url(@hart_science_experiment)
  end

  test "should destroy hart_science_experiment" do
    assert_difference('HartScienceExperiment.count', -1) do
      delete hart_science_experiment_url(@hart_science_experiment)
    end

    assert_redirected_to hart_science_experiments_url
  end
end
