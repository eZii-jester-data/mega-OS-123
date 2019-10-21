# typed: false
require 'test_helper'

class Banal::RelatedObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_related_object = banal_related_objects(:one)
  end

  test "should get index" do
    get banal_related_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_related_object_url
    assert_response :success
  end

  test "should create banal_related_object" do
    assert_difference('Banal::RelatedObject.count') do
      post banal_related_objects_url, params: { banal_related_object: { object_id: @banal_related_object.object_id, object_type: @banal_related_object.object_type } }
    end

    assert_redirected_to banal_related_object_url(Banal::RelatedObject.last)
  end

  test "should show banal_related_object" do
    get banal_related_object_url(@banal_related_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_related_object_url(@banal_related_object)
    assert_response :success
  end

  test "should update banal_related_object" do
    patch banal_related_object_url(@banal_related_object), params: { banal_related_object: { object_id: @banal_related_object.object_id, object_type: @banal_related_object.object_type } }
    assert_redirected_to banal_related_object_url(@banal_related_object)
  end

  test "should destroy banal_related_object" do
    assert_difference('Banal::RelatedObject.count', -1) do
      delete banal_related_object_url(@banal_related_object)
    end

    assert_redirected_to banal_related_objects_url
  end
end
