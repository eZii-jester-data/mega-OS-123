# typed: false
require "application_system_test_case"

class BigDiscreteModulesTest < ApplicationSystemTestCase
  setup do
    @big_discrete_module = big_discrete_modules(:one)
  end

  test "visiting the index" do
    visit big_discrete_modules_url
    assert_selector "h1", text: "Big Discrete Modules"
  end

  test "creating a Big discrete module" do
    visit big_discrete_modules_url
    click_on "New Big Discrete Module"

    fill_in "How", with: @big_discrete_module.how
    fill_in "What", with: @big_discrete_module.what
    fill_in "When", with: @big_discrete_module.when
    fill_in "Why", with: @big_discrete_module.why
    click_on "Create Big discrete module"

    assert_text "Big discrete module was successfully created"
    click_on "Back"
  end

  test "updating a Big discrete module" do
    visit big_discrete_modules_url
    click_on "Edit", match: :first

    fill_in "How", with: @big_discrete_module.how
    fill_in "What", with: @big_discrete_module.what
    fill_in "When", with: @big_discrete_module.when
    fill_in "Why", with: @big_discrete_module.why
    click_on "Update Big discrete module"

    assert_text "Big discrete module was successfully updated"
    click_on "Back"
  end

  test "destroying a Big discrete module" do
    visit big_discrete_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Big discrete module was successfully destroyed"
  end
end
