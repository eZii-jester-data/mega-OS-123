# typed: false
require 'test_helper'

class EziiCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_city = ezii_cities(:one)
  end

  test "should get index" do
    get ezii_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_city_url
    assert_response :success
  end

  test "should create ezii_city" do
    assert_difference('EziiCity.count') do
      post ezii_cities_url, params: { ezii_city: { address: @ezii_city.address } }
    end

    assert_redirected_to ezii_city_url(EziiCity.last)
  end

  test "should show ezii_city" do
    get ezii_city_url(@ezii_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_city_url(@ezii_city)
    assert_response :success
  end

  test "should update ezii_city" do
    patch ezii_city_url(@ezii_city), params: { ezii_city: { address: @ezii_city.address } }
    assert_redirected_to ezii_city_url(@ezii_city)
  end

  test "should destroy ezii_city" do
    assert_difference('EziiCity.count', -1) do
      delete ezii_city_url(@ezii_city)
    end

    assert_redirected_to ezii_cities_url
  end
end
