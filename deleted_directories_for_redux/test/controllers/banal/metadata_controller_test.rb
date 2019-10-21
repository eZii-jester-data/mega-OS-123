# typed: false
require 'test_helper'

class Banal::MetadataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_metadatum = banal_metadata(:one)
  end

  test "should get index" do
    get banal_metadata_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_metadatum_url
    assert_response :success
  end

  test "should create banal_metadatum" do
    assert_difference('Banal::Metadatum.count') do
      post banal_metadata_url, params: { banal_metadatum: { category: @banal_metadatum.category, language: @banal_metadatum.language, sub_category: @banal_metadatum.sub_category } }
    end

    assert_redirected_to banal_metadatum_url(Banal::Metadatum.last)
  end

  test "should show banal_metadatum" do
    get banal_metadatum_url(@banal_metadatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_metadatum_url(@banal_metadatum)
    assert_response :success
  end

  test "should update banal_metadatum" do
    patch banal_metadatum_url(@banal_metadatum), params: { banal_metadatum: { category: @banal_metadatum.category, language: @banal_metadatum.language, sub_category: @banal_metadatum.sub_category } }
    assert_redirected_to banal_metadatum_url(@banal_metadatum)
  end

  test "should destroy banal_metadatum" do
    assert_difference('Banal::Metadatum.count', -1) do
      delete banal_metadatum_url(@banal_metadatum)
    end

    assert_redirected_to banal_metadata_url
  end
end
