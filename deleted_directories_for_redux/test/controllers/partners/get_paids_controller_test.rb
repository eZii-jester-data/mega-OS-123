# typed: false
require 'test_helper'

class Partners::GetPaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partners_get_paid = partners_get_paids(:one)
  end

  test "should get index" do
    get partners_get_paids_url
    assert_response :success
  end

  test "should get new" do
    get new_partners_get_paid_url
    assert_response :success
  end

  test "should create partners_get_paid" do
    assert_difference('Partners::GetPaid.count') do
      post partners_get_paids_url, params: { partners_get_paid: { enter_invoice_number: @partners_get_paid.enter_invoice_number, you_will_receive_this_when_question_mark: @partners_get_paid.you_will_receive_this_when_question_mark } }
    end

    assert_redirected_to partners_get_paid_url(Partners::GetPaid.last)
  end

  test "should show partners_get_paid" do
    get partners_get_paid_url(@partners_get_paid)
    assert_response :success
  end

  test "should get edit" do
    get edit_partners_get_paid_url(@partners_get_paid)
    assert_response :success
  end

  test "should update partners_get_paid" do
    patch partners_get_paid_url(@partners_get_paid), params: { partners_get_paid: { enter_invoice_number: @partners_get_paid.enter_invoice_number, you_will_receive_this_when_question_mark: @partners_get_paid.you_will_receive_this_when_question_mark } }
    assert_redirected_to partners_get_paid_url(@partners_get_paid)
  end

  test "should destroy partners_get_paid" do
    assert_difference('Partners::GetPaid.count', -1) do
      delete partners_get_paid_url(@partners_get_paid)
    end

    assert_redirected_to partners_get_paids_url
  end
end
