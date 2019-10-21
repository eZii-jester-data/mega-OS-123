# typed: false
require 'test_helper'

class Banal::LinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_link = banal_links(:one)
  end

  test "should get index" do
    get banal_links_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_link_url
    assert_response :success
  end

  test "should create banal_link" do
    assert_difference('Banal::Link.count') do
      post banal_links_url, params: { banal_link: { metadata_id: @banal_link.metadata_id, related_object_id: @banal_link.related_object_id, uri: @banal_link.uri } }
    end

    assert_redirected_to banal_link_url(Banal::Link.last)
  end

  test "should show banal_link" do
    get banal_link_url(@banal_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_link_url(@banal_link)
    assert_response :success
  end

  test "should update banal_link" do
    patch banal_link_url(@banal_link), params: { banal_link: { metadata_id: @banal_link.metadata_id, related_object_id: @banal_link.related_object_id, uri: @banal_link.uri } }
    assert_redirected_to banal_link_url(@banal_link)
  end

  test "should destroy banal_link" do
    assert_difference('Banal::Link.count', -1) do
      delete banal_link_url(@banal_link)
    end

    assert_redirected_to banal_links_url
  end
end
