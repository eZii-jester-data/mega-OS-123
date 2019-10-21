# typed: false
require 'test_helper'

class StickRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stick_record = stick_records(:one)
  end

  test "should get index" do
    get stick_records_url
    assert_response :success
  end

  test "should get new" do
    get new_stick_record_url
    assert_response :success
  end

  test "should create stick_record" do
    assert_difference('StickRecord.count') do
      post stick_records_url, params: { stick_record: { identifier: @stick_record.identifier, modifiers: @stick_record.modifiers } }
    end

    assert_redirected_to stick_record_url(StickRecord.last)
  end

  test "should show stick_record" do
    get stick_record_url(@stick_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_stick_record_url(@stick_record)
    assert_response :success
  end

  test "should update stick_record" do
    patch stick_record_url(@stick_record), params: { stick_record: { identifier: @stick_record.identifier, modifiers: @stick_record.modifiers } }
    assert_redirected_to stick_record_url(@stick_record)
  end

  test "should destroy stick_record" do
    assert_difference('StickRecord.count', -1) do
      delete stick_record_url(@stick_record)
    end

    assert_redirected_to stick_records_url
  end
end
