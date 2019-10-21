# typed: false
require "application_system_test_case"

class CodeLinkBatchesTest < ApplicationSystemTestCase
  setup do
    @code_link_batch = code_link_batches(:one)
  end

  test "visiting the index" do
    visit code_link_batches_url
    assert_selector "h1", text: "Code Link Batches"
  end

  test "creating a Code link batch" do
    visit code_link_batches_url
    click_on "New Code Link Batch"

    fill_in "Code link", with: @code_link_batch.code_link_id
    fill_in "Description", with: @code_link_batch.description
    click_on "Create Code link batch"

    assert_text "Code link batch was successfully created"
    click_on "Back"
  end

  test "updating a Code link batch" do
    visit code_link_batches_url
    click_on "Edit", match: :first

    fill_in "Code link", with: @code_link_batch.code_link_id
    fill_in "Description", with: @code_link_batch.description
    click_on "Update Code link batch"

    assert_text "Code link batch was successfully updated"
    click_on "Back"
  end

  test "destroying a Code link batch" do
    visit code_link_batches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code link batch was successfully destroyed"
  end
end
