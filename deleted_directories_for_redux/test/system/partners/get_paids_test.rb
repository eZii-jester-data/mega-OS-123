# typed: false
require "application_system_test_case"

class Partners::GetPaidsTest < ApplicationSystemTestCase
  setup do
    @partners_get_paid = partners_get_paids(:one)
  end

  test "visiting the index" do
    visit partners_get_paids_url
    assert_selector "h1", text: "Partners/Get Paids"
  end

  test "creating a Get paid" do
    visit partners_get_paids_url
    click_on "New Partners/Get Paid"

    fill_in "Enter invoice number", with: @partners_get_paid.enter_invoice_number
    fill_in "You will receive this when question mark", with: @partners_get_paid.you_will_receive_this_when_question_mark
    click_on "Create Get paid"

    assert_text "Get paid was successfully created"
    click_on "Back"
  end

  test "updating a Get paid" do
    visit partners_get_paids_url
    click_on "Edit", match: :first

    fill_in "Enter invoice number", with: @partners_get_paid.enter_invoice_number
    fill_in "You will receive this when question mark", with: @partners_get_paid.you_will_receive_this_when_question_mark
    click_on "Update Get paid"

    assert_text "Get paid was successfully updated"
    click_on "Back"
  end

  test "destroying a Get paid" do
    visit partners_get_paids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Get paid was successfully destroyed"
  end
end
