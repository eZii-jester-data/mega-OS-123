# typed: false
require 'test_helper'

class BanalComplexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_complex = banal_complexes(:one)
  end

  test "should get index" do
    get banal_complexes_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_complex_url
    assert_response :success
  end

  test "should create banal_complex" do
    assert_difference('BanalComplex.count') do
      post banal_complexes_url, params: { banal_complex: { parent_id: @banal_complex.parent_id, weight: @banal_complex.weight } }
    end

    assert_redirected_to banal_complex_url(BanalComplex.last)
  end

  test "should show banal_complex" do
    get banal_complex_url(@banal_complex)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_complex_url(@banal_complex)
    assert_response :success
  end

  test "should update banal_complex" do
    patch banal_complex_url(@banal_complex), params: { banal_complex: { parent_id: @banal_complex.parent_id, weight: @banal_complex.weight } }
    assert_redirected_to banal_complex_url(@banal_complex)
  end

  test "should destroy banal_complex" do
    assert_difference('BanalComplex.count', -1) do
      delete banal_complex_url(@banal_complex)
    end

    assert_redirected_to banal_complexes_url
  end
end
