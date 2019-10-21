# typed: false
require 'test_helper'

class Banal::DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_document = banal_documents(:one)
  end

  test "should get index" do
    get banal_documents_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_document_url
    assert_response :success
  end

  test "should create banal_document" do
    assert_difference('Banal::Document.count') do
      post banal_documents_url, params: { banal_document: { global_path: @banal_document.global_path, metadata_id: @banal_document.metadata_id, related_object_id: @banal_document.related_object_id } }
    end

    assert_redirected_to banal_document_url(Banal::Document.last)
  end

  test "should show banal_document" do
    get banal_document_url(@banal_document)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_document_url(@banal_document)
    assert_response :success
  end

  test "should update banal_document" do
    patch banal_document_url(@banal_document), params: { banal_document: { global_path: @banal_document.global_path, metadata_id: @banal_document.metadata_id, related_object_id: @banal_document.related_object_id } }
    assert_redirected_to banal_document_url(@banal_document)
  end

  test "should destroy banal_document" do
    assert_difference('Banal::Document.count', -1) do
      delete banal_document_url(@banal_document)
    end

    assert_redirected_to banal_documents_url
  end
end
