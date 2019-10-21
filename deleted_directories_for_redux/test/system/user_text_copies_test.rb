# typed: false
require "application_system_test_case"

class UserTextCopiesTest < ApplicationSystemTestCase
  setup do
    @user_text_copy = user_text_copies(:one)
  end

  test "visiting the index" do
    visit user_text_copies_url
    assert_selector "h1", text: "User Text Copies"
  end

  test "creating a User text copy" do
    visit user_text_copies_url
    click_on "New User Text Copy"

    fill_in "Copies", with: @user_text_copy.copies
    fill_in "Ezii adult verify and signin", with: @user_text_copy.ezii_adult_verify_and_signin_id
    click_on "Create User text copy"

    assert_text "User text copy was successfully created"
    click_on "Back"
  end

  test "updating a User text copy" do
    visit user_text_copies_url
    click_on "Edit", match: :first

    fill_in "Copies", with: @user_text_copy.copies
    fill_in "Ezii adult verify and signin", with: @user_text_copy.ezii_adult_verify_and_signin_id
    click_on "Update User text copy"

    assert_text "User text copy was successfully updated"
    click_on "Back"
  end

  test "destroying a User text copy" do
    visit user_text_copies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User text copy was successfully destroyed"
  end
end
