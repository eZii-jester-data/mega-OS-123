# typed: false
require_relative '../test_helper'

class EziiOsFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_os_file = ezii_os_files(:one)
  end

  test "should get index" do
    get ezii_os_files_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_os_file_url
    assert_response :success
  end

  test "should create ezii_os_file" do
    assert_difference('EziiOsFile.count') do
      post ezii_os_files_url, params: { ezii_os_file: { file_path: @ezii_os_file.file_path } }
    end

    assert_redirected_to ezii_os_file_url(EziiOsFile.last)
  end

  test "should show ezii_os_file" do
    get ezii_os_file_url(@ezii_os_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_os_file_url(@ezii_os_file)
    assert_response :success
  end

  test "should update ezii_os_file" do
    patch ezii_os_file_url(@ezii_os_file), params: { ezii_os_file: { file_path: @ezii_os_file.file_path } }
    assert_redirected_to ezii_os_file_url(@ezii_os_file)
  end

  test "should destroy ezii_os_file" do
    assert_difference('EziiOsFile.count', -1) do
      delete ezii_os_file_url(@ezii_os_file)
    end

    assert_redirected_to ezii_os_files_url
  end
end
