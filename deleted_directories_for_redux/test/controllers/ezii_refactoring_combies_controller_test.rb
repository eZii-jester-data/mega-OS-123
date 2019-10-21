# typed: false
require 'test_helper'

class EziiRefactoringCombiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_refactoring_comby = ezii_refactoring_combies(:one)
  end

  test "should get index" do
    get ezii_refactoring_combies_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_refactoring_comby_url
    assert_response :success
  end

  test "should create ezii_refactoring_comby" do
    assert_difference('EziiRefactoringComby.count') do
      post ezii_refactoring_combies_url, params: { ezii_refactoring_comby: { text: @ezii_refactoring_comby.text, url: @ezii_refactoring_comby.url } }
    end

    assert_redirected_to ezii_refactoring_comby_url(EziiRefactoringComby.last)
  end

  test "should show ezii_refactoring_comby" do
    get ezii_refactoring_comby_url(@ezii_refactoring_comby)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_refactoring_comby_url(@ezii_refactoring_comby)
    assert_response :success
  end

  test "should update ezii_refactoring_comby" do
    patch ezii_refactoring_comby_url(@ezii_refactoring_comby), params: { ezii_refactoring_comby: { text: @ezii_refactoring_comby.text, url: @ezii_refactoring_comby.url } }
    assert_redirected_to ezii_refactoring_comby_url(@ezii_refactoring_comby)
  end

  test "should destroy ezii_refactoring_comby" do
    assert_difference('EziiRefactoringComby.count', -1) do
      delete ezii_refactoring_comby_url(@ezii_refactoring_comby)
    end

    assert_redirected_to ezii_refactoring_combies_url
  end
end
