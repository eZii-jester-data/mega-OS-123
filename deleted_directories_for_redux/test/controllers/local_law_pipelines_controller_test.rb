# typed: false
require 'test_helper'

class LocalLawPipelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local_law_pipeline = local_law_pipelines(:one)
  end

  test "should get index" do
    get local_law_pipelines_url
    assert_response :success
  end

  test "should get new" do
    get new_local_law_pipeline_url
    assert_response :success
  end

  test "should create local_law_pipeline" do
    assert_difference('LocalLawPipeline.count') do
      post local_law_pipelines_url, params: { local_law_pipeline: { book: @local_law_pipeline.book, local_law_link: @local_law_pipeline.local_law_link, local_law_pipeline_id: @local_law_pipeline.local_law_pipeline_id, paragraph: @local_law_pipeline.paragraph, paragraph_number: @local_law_pipeline.paragraph_number, title: @local_law_pipeline.title } }
    end

    assert_redirected_to local_law_pipeline_url(LocalLawPipeline.last)
  end

  test "should show local_law_pipeline" do
    get local_law_pipeline_url(@local_law_pipeline)
    assert_response :success
  end

  test "should get edit" do
    get edit_local_law_pipeline_url(@local_law_pipeline)
    assert_response :success
  end

  test "should update local_law_pipeline" do
    patch local_law_pipeline_url(@local_law_pipeline), params: { local_law_pipeline: { book: @local_law_pipeline.book, local_law_link: @local_law_pipeline.local_law_link, local_law_pipeline_id: @local_law_pipeline.local_law_pipeline_id, paragraph: @local_law_pipeline.paragraph, paragraph_number: @local_law_pipeline.paragraph_number, title: @local_law_pipeline.title } }
    assert_redirected_to local_law_pipeline_url(@local_law_pipeline)
  end

  test "should destroy local_law_pipeline" do
    assert_difference('LocalLawPipeline.count', -1) do
      delete local_law_pipeline_url(@local_law_pipeline)
    end

    assert_redirected_to local_law_pipelines_url
  end
end
