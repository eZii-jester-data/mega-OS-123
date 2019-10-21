# typed: false
require 'test_helper'

class WhitelabelSystemExtensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whitelabel_system_extension = whitelabel_system_extensions(:one)
  end

  test "should get index" do
    get whitelabel_system_extensions_url
    assert_response :success
  end

  test "should get new" do
    get new_whitelabel_system_extension_url
    assert_response :success
  end

  test "should create whitelabel_system_extension" do
    assert_difference('WhitelabelSystemExtension.count') do
      post whitelabel_system_extensions_url, params: { whitelabel_system_extension: { comment_id: @whitelabel_system_extension.comment_id, rfc: @whitelabel_system_extension.rfc } }
    end

    assert_redirected_to whitelabel_system_extension_url(WhitelabelSystemExtension.last)
  end

  test "should show whitelabel_system_extension" do
    get whitelabel_system_extension_url(@whitelabel_system_extension)
    assert_response :success
  end

  test "should get edit" do
    get edit_whitelabel_system_extension_url(@whitelabel_system_extension)
    assert_response :success
  end

  test "should update whitelabel_system_extension" do
    patch whitelabel_system_extension_url(@whitelabel_system_extension), params: { whitelabel_system_extension: { comment_id: @whitelabel_system_extension.comment_id, rfc: @whitelabel_system_extension.rfc } }
    assert_redirected_to whitelabel_system_extension_url(@whitelabel_system_extension)
  end

  test "should destroy whitelabel_system_extension" do
    assert_difference('WhitelabelSystemExtension.count', -1) do
      delete whitelabel_system_extension_url(@whitelabel_system_extension)
    end

    assert_redirected_to whitelabel_system_extensions_url
  end
end
