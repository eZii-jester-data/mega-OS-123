# typed: false
require 'test_helper'

class FileSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_system = file_systems(:one)
  end

  test "should get index" do
    get file_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_file_system_url
    assert_response :success
  end

  test "should create file_system" do
    assert_difference('FileSystem.count') do
      post file_systems_url, params: { file_system: { description: @file_system.description, machine_readable_identifier: @file_system.machine_readable_identifier } }
    end

    assert_redirected_to file_system_url(FileSystem.last)
  end

  test "should show file_system" do
    get file_system_url(@file_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_system_url(@file_system)
    assert_response :success
  end

  test "should update file_system" do
    patch file_system_url(@file_system), params: { file_system: { description: @file_system.description, machine_readable_identifier: @file_system.machine_readable_identifier } }
    assert_redirected_to file_system_url(@file_system)
  end

  test "should destroy file_system" do
    assert_difference('FileSystem.count', -1) do
      delete file_system_url(@file_system)
    end

    assert_redirected_to file_systems_url
  end
end
