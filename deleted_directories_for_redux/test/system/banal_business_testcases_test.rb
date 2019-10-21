# typed: false
require "application_system_test_case"

class BanalBusinessTestcasesTest < ApplicationSystemTestCase
  setup do
    @banal_business_testcase = banal_business_testcases(:one)
  end

  test "visiting the index" do
    visit banal_business_testcases_url
    assert_selector "h1", text: "Banal Business Testcases"
  end

  test "creating a Banal business testcase" do
    visit banal_business_testcases_url
    click_on "New Banal Business Testcase"

    fill_in "Link", with: @banal_business_testcase.link
    fill_in "Metainfo", with: @banal_business_testcase.metainfo
    fill_in "Name", with: @banal_business_testcase.name
    fill_in "Org", with: @banal_business_testcase.org_id
    click_on "Create Banal business testcase"

    assert_text "Banal business testcase was successfully created"
    click_on "Back"
  end

  test "updating a Banal business testcase" do
    visit banal_business_testcases_url
    click_on "Edit", match: :first

    fill_in "Link", with: @banal_business_testcase.link
    fill_in "Metainfo", with: @banal_business_testcase.metainfo
    fill_in "Name", with: @banal_business_testcase.name
    fill_in "Org", with: @banal_business_testcase.org_id
    click_on "Update Banal business testcase"

    assert_text "Banal business testcase was successfully updated"
    click_on "Back"
  end

  test "destroying a Banal business testcase" do
    visit banal_business_testcases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banal business testcase was successfully destroyed"
  end
end
