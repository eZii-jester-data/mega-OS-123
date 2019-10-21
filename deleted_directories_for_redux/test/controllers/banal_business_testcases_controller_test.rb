# typed: false
require 'test_helper'

class BanalBusinessTestcasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_business_testcase = banal_business_testcases(:one)
  end

  test "should get index" do
    get banal_business_testcases_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_business_testcase_url
    assert_response :success
  end

  test "should create banal_business_testcase" do
    assert_difference('BanalBusinessTestcase.count') do
      post banal_business_testcases_url, params: { banal_business_testcase: { link: @banal_business_testcase.link, metainfo: @banal_business_testcase.metainfo, name: @banal_business_testcase.name, org_id: @banal_business_testcase.org_id } }
    end

    assert_redirected_to banal_business_testcase_url(BanalBusinessTestcase.last)
  end

  test "should show banal_business_testcase" do
    get banal_business_testcase_url(@banal_business_testcase)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_business_testcase_url(@banal_business_testcase)
    assert_response :success
  end

  test "should update banal_business_testcase" do
    patch banal_business_testcase_url(@banal_business_testcase), params: { banal_business_testcase: { link: @banal_business_testcase.link, metainfo: @banal_business_testcase.metainfo, name: @banal_business_testcase.name, org_id: @banal_business_testcase.org_id } }
    assert_redirected_to banal_business_testcase_url(@banal_business_testcase)
  end

  test "should destroy banal_business_testcase" do
    assert_difference('BanalBusinessTestcase.count', -1) do
      delete banal_business_testcase_url(@banal_business_testcase)
    end

    assert_redirected_to banal_business_testcases_url
  end
end
