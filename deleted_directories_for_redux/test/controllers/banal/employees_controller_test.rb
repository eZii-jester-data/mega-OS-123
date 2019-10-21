# typed: false
require 'test_helper'

class Banal::EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banal_employee = banal_employees(:one)
  end

  test "should get index" do
    get banal_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_banal_employee_url
    assert_response :success
  end

  test "should create banal_employee" do
    assert_difference('Banal::Employee.count') do
      post banal_employees_url, params: { banal_employee: { Address: @banal_employee.Address, Country: @banal_employee.Country, Facebook: @banal_employee.Facebook, First_Name: @banal_employee.First_Name, Full_Name: @banal_employee.Full_Name, Last_Name_1: @banal_employee.Last_Name_1, Last_Name_2: @banal_employee.Last_Name_2, Linkedin: @banal_employee.Linkedin, Middle_Name: @banal_employee.Middle_Name, Mobile: @banal_employee.Mobile, Role: @banal_employee.Role, e_mail: @banal_employee.e_mail } }
    end

    assert_redirected_to banal_employee_url(Banal::Employee.last)
  end

  test "should show banal_employee" do
    get banal_employee_url(@banal_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_banal_employee_url(@banal_employee)
    assert_response :success
  end

  test "should update banal_employee" do
    patch banal_employee_url(@banal_employee), params: { banal_employee: { Address: @banal_employee.Address, Country: @banal_employee.Country, Facebook: @banal_employee.Facebook, First_Name: @banal_employee.First_Name, Full_Name: @banal_employee.Full_Name, Last_Name_1: @banal_employee.Last_Name_1, Last_Name_2: @banal_employee.Last_Name_2, Linkedin: @banal_employee.Linkedin, Middle_Name: @banal_employee.Middle_Name, Mobile: @banal_employee.Mobile, Role: @banal_employee.Role, e_mail: @banal_employee.e_mail } }
    assert_redirected_to banal_employee_url(@banal_employee)
  end

  test "should destroy banal_employee" do
    assert_difference('Banal::Employee.count', -1) do
      delete banal_employee_url(@banal_employee)
    end

    assert_redirected_to banal_employees_url
  end
end
