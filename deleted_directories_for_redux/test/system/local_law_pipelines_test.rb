# typed: false
require "application_system_test_case"

class LocalLawPipelinesTest < ApplicationSystemTestCase
  setup do
    @local_law_pipeline = local_law_pipelines(:one)
  end

  test "visiting the index" do
    visit local_law_pipelines_url
    assert_selector "h1", text: "Local Law Pipelines"
  end

  test "creating a Local law pipeline" do
    visit local_law_pipelines_url
    click_on "New Local Law Pipeline"

    fill_in "Book", with: @local_law_pipeline.book
    fill_in "Local law link", with: @local_law_pipeline.local_law_link
    fill_in "Local law pipeline", with: @local_law_pipeline.local_law_pipeline_id
    fill_in "Paragraph", with: @local_law_pipeline.paragraph
    fill_in "Paragraph number", with: @local_law_pipeline.paragraph_number
    fill_in "Title", with: @local_law_pipeline.title
    click_on "Create Local law pipeline"

    assert_text "Local law pipeline was successfully created"
    click_on "Back"
  end

  test "updating a Local law pipeline" do
    visit local_law_pipelines_url
    click_on "Edit", match: :first

    fill_in "Book", with: @local_law_pipeline.book
    fill_in "Local law link", with: @local_law_pipeline.local_law_link
    fill_in "Local law pipeline", with: @local_law_pipeline.local_law_pipeline_id
    fill_in "Paragraph", with: @local_law_pipeline.paragraph
    fill_in "Paragraph number", with: @local_law_pipeline.paragraph_number
    fill_in "Title", with: @local_law_pipeline.title
    click_on "Update Local law pipeline"

    assert_text "Local law pipeline was successfully updated"
    click_on "Back"
  end

  test "destroying a Local law pipeline" do
    visit local_law_pipelines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Local law pipeline was successfully destroyed"
  end
end
