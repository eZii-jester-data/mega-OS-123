# typed: false
require 'test_helper'

class AddressSearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address_search = address_searches(:one)
  end

  test "should get index" do
    get address_searches_url
    assert_response :success
  end

  test "should get new" do
    get new_address_search_url
    assert_response :success
  end

  test "should create address_search" do
    assert_difference('AddressSearch.count') do
      post address_searches_url, params: { address_search: { search_string: @address_search.search_string, sentiment: @address_search.sentiment } }
    end

    assert_redirected_to address_search_url(AddressSearch.last)
  end

  test "should show address_search" do
    get address_search_url(@address_search)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_search_url(@address_search)
    assert_response :success
  end

  test "should update address_search" do
    patch address_search_url(@address_search), params: { address_search: { search_string: @address_search.search_string, sentiment: @address_search.sentiment } }
    assert_redirected_to address_search_url(@address_search)
  end

  test "should destroy address_search" do
    assert_difference('AddressSearch.count', -1) do
      delete address_search_url(@address_search)
    end

    assert_redirected_to address_searches_url
  end
end
