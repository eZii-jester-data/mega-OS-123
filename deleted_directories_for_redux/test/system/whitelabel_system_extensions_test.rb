# typed: false
require "application_system_test_case"

class WhitelabelSystemExtensionsTest < ApplicationSystemTestCase
  setup do
    @whitelabel_system_extension = whitelabel_system_extensions(:one)
  end

  test "visiting the index" do
    visit whitelabel_system_extensions_url
    assert_selector "h1", text: "Whitelabel System Extensions"
  end

  test "creating a Whitelabel system extension" do
    visit whitelabel_system_extensions_url
    click_on "New Whitelabel System Extension"

    fill_in "Comment", with: @whitelabel_system_extension.comment_id
    fill_in "Rfc", with: @whitelabel_system_extension.rfc
    click_on "Create Whitelabel system extension"

    assert_text "Whitelabel system extension was successfully created"
    click_on "Back"
  end

  test "updating a Whitelabel system extension" do
    visit whitelabel_system_extensions_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @whitelabel_system_extension.comment_id
    fill_in "Rfc", with: @whitelabel_system_extension.rfc
    click_on "Update Whitelabel system extension"

    assert_text "Whitelabel system extension was successfully updated"
    click_on "Back"
  end

  test "destroying a Whitelabel system extension" do
    visit whitelabel_system_extensions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Whitelabel system extension was successfully destroyed"
  end
end
