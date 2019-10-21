# typed: false
require 'test_helper'

class EziiSeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_seed = ezii_seeds(:one)
  end

  test "should get index" do
    get ezii_seeds_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_seed_url
    assert_response :success
  end

  test "should create ezii_seed" do
    assert_difference('EziiSeed.count') do
      post ezii_seeds_url, params: { ezii_seed: { description: @ezii_seed.description, gist_link: @ezii_seed.gist_link, github_link: @ezii_seed.github_link } }
    end

    assert_redirected_to ezii_seed_url(EziiSeed.last)
  end

  test "should show ezii_seed" do
    get ezii_seed_url(@ezii_seed)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_seed_url(@ezii_seed)
    assert_response :success
  end

  test "should update ezii_seed" do
    patch ezii_seed_url(@ezii_seed), params: { ezii_seed: { description: @ezii_seed.description, gist_link: @ezii_seed.gist_link, github_link: @ezii_seed.github_link } }
    assert_redirected_to ezii_seed_url(@ezii_seed)
  end

  test "should destroy ezii_seed" do
    assert_difference('EziiSeed.count', -1) do
      delete ezii_seed_url(@ezii_seed)
    end

    assert_redirected_to ezii_seeds_url
  end
end
