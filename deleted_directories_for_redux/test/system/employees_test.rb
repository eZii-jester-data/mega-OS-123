# typed: false
require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Address", with: @employee.Address
    fill_in "Country", with: @employee.Country
    fill_in "Facebook", with: @employee.Facebook
    fill_in "First name", with: @employee.First_Name
    fill_in "Full name", with: @employee.Full_Name
    fill_in "Last name 1", with: @employee.Last_Name_1
    fill_in "Last name 2", with: @employee.Last_Name_2
    fill_in "Linkedin", with: @employee.Linkedin
    fill_in "Middle name", with: @employee.Middle_Name
    fill_in "Mobile", with: @employee.Mobile
    fill_in "Role", with: @employee.Role
    fill_in "E mail", with: @employee.e_mail
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee.Address
    fill_in "Country", with: @employee.Country
    fill_in "Facebook", with: @employee.Facebook
    fill_in "First name", with: @employee.First_Name
    fill_in "Full name", with: @employee.Full_Name
    fill_in "Last name 1", with: @employee.Last_Name_1
    fill_in "Last name 2", with: @employee.Last_Name_2
    fill_in "Linkedin", with: @employee.Linkedin
    fill_in "Middle name", with: @employee.Middle_Name
    fill_in "Mobile", with: @employee.Mobile
    fill_in "Role", with: @employee.Role
    fill_in "E mail", with: @employee.e_mail
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
