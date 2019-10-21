# typed: false
require 'test_helper'

class UnzipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unzip = unzips(:one)
  end

  test "should get index" do
    get unzips_url
    assert_response :success
  end

  test "should get new" do
    get new_unzip_url
    assert_response :success
  end

  test "should create unzip" do
    assert_difference('Unzip.count') do
      post unzips_url, params: { unzip: { zip_file_path: @unzip.zip_file_path } }
    end

    assert_redirected_to unzip_url(Unzip.last)
  end

  test "should show unzip" do
    get unzip_url(@unzip)
    assert_response :success
  end

  test "should get edit" do
    get edit_unzip_url(@unzip)
    assert_response :success
  end

  test "should update unzip" do
    patch unzip_url(@unzip), params: { unzip: { zip_file_path: @unzip.zip_file_path } }
    assert_redirected_to unzip_url(@unzip)
  end

  test "should destroy unzip" do
    assert_difference('Unzip.count', -1) do
      delete unzip_url(@unzip)
    end

    assert_redirected_to unzips_url
  end
end
