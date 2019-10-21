# typed: false
require 'test_helper'

class CodeLinkBatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_link_batch = code_link_batches(:one)
  end

  test "should get index" do
    get code_link_batches_url
    assert_response :success
  end

  test "should get new" do
    get new_code_link_batch_url
    assert_response :success
  end

  test "should create code_link_batch" do
    assert_difference('CodeLinkBatch.count') do
      post code_link_batches_url, params: { code_link_batch: { code_link_id: @code_link_batch.code_link_id, description: @code_link_batch.description } }
    end

    assert_redirected_to code_link_batch_url(CodeLinkBatch.last)
  end

  test "should show code_link_batch" do
    get code_link_batch_url(@code_link_batch)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_link_batch_url(@code_link_batch)
    assert_response :success
  end

  test "should update code_link_batch" do
    patch code_link_batch_url(@code_link_batch), params: { code_link_batch: { code_link_id: @code_link_batch.code_link_id, description: @code_link_batch.description } }
    assert_redirected_to code_link_batch_url(@code_link_batch)
  end

  test "should destroy code_link_batch" do
    assert_difference('CodeLinkBatch.count', -1) do
      delete code_link_batch_url(@code_link_batch)
    end

    assert_redirected_to code_link_batches_url
  end
end
