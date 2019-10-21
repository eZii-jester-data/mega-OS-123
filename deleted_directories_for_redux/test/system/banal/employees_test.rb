# typed: false
require "application_system_test_case"

class Banal::EmployeesTest < ApplicationSystemTestCase
  setup do
    @banal_employee = banal_employees(:one)
  end

  test "visiting the index" do
    visit banal_employees_url
    assert_selector "h1", text: "Banal/Employees"
  end

  test "creating a Employee" do
    visit banal_employees_url
    click_on "New Banal/Employee"

    fill_in "Address", with: @banal_employee.Address
    fill_in "Country", with: @banal_employee.Country
    fill_in "Facebook", with: @banal_employee.Facebook
    fill_in "First name", with: @banal_employee.First_Name
    fill_in "Full name", with: @banal_employee.Full_Name
    fill_in "Last name 1", with: @banal_employee.Last_Name_1
    fill_in "Last name 2", with: @banal_employee.Last_Name_2
    fill_in "Linkedin", with: @banal_employee.Linkedin
    fill_in "Middle name", with: @banal_employee.Middle_Name
    fill_in "Mobile", with: @banal_employee.Mobile
    fill_in "Role", with: @banal_employee.Role
    fill_in "E mail", with: @banal_employee.e_mail
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit banal_employees_url
    click_on "Edit", match: :first

    fill_in "Address", with: @banal_employee.Address
    fill_in "Country", with: @banal_employee.Country
    fill_in "Facebook", with: @banal_employee.Facebook
    fill_in "First name", with: @banal_employee.First_Name
    fill_in "Full name", with: @banal_employee.Full_Name
    fill_in "Last name 1", with: @banal_employee.Last_Name_1
    fill_in "Last name 2", with: @banal_employee.Last_Name_2
    fill_in "Linkedin", with: @banal_employee.Linkedin
    fill_in "Middle name", with: @banal_employee.Middle_Name
    fill_in "Mobile", with: @banal_employee.Mobile
    fill_in "Role", with: @banal_employee.Role
    fill_in "E mail", with: @banal_employee.e_mail
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit banal_employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
