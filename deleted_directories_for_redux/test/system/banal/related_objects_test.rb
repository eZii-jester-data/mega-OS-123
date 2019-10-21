# typed: false
require "application_system_test_case"

class Banal::RelatedObjectsTest < ApplicationSystemTestCase
  setup do
    @banal_related_object = banal_related_objects(:one)
  end

  test "visiting the index" do
    visit banal_related_objects_url
    assert_selector "h1", text: "Banal/Related Objects"
  end

  test "creating a Related object" do
    visit banal_related_objects_url
    click_on "New Banal/Related Object"

    fill_in "Object", with: @banal_related_object.object_id
    fill_in "Object type", with: @banal_related_object.object_type
    click_on "Create Related object"

    assert_text "Related object was successfully created"
    click_on "Back"
  end

  test "updating a Related object" do
    visit banal_related_objects_url
    click_on "Edit", match: :first

    fill_in "Object", with: @banal_related_object.object_id
    fill_in "Object type", with: @banal_related_object.object_type
    click_on "Update Related object"

    assert_text "Related object was successfully updated"
    click_on "Back"
  end

  test "destroying a Related object" do
    visit banal_related_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Related object was successfully destroyed"
  end
end
