# typed: false
require "application_system_test_case"

class Banal::DocumentsTest < ApplicationSystemTestCase
  setup do
    @banal_document = banal_documents(:one)
  end

  test "visiting the index" do
    visit banal_documents_url
    assert_selector "h1", text: "Banal/Documents"
  end

  test "creating a Document" do
    visit banal_documents_url
    click_on "New Banal/Document"

    fill_in "Global path", with: @banal_document.global_path
    fill_in "Metadata", with: @banal_document.metadata_id
    fill_in "Related object", with: @banal_document.related_object_id
    click_on "Create Document"

    assert_text "Document was successfully created"
    click_on "Back"
  end

  test "updating a Document" do
    visit banal_documents_url
    click_on "Edit", match: :first

    fill_in "Global path", with: @banal_document.global_path
    fill_in "Metadata", with: @banal_document.metadata_id
    fill_in "Related object", with: @banal_document.related_object_id
    click_on "Update Document"

    assert_text "Document was successfully updated"
    click_on "Back"
  end

  test "destroying a Document" do
    visit banal_documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document was successfully destroyed"
  end
end
