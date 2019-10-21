# typed: false
require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { Address: @employee.Address, Country: @employee.Country, Facebook: @employee.Facebook, First_Name: @employee.First_Name, Full_Name: @employee.Full_Name, Last_Name_1: @employee.Last_Name_1, Last_Name_2: @employee.Last_Name_2, Linkedin: @employee.Linkedin, Middle_Name: @employee.Middle_Name, Mobile: @employee.Mobile, Role: @employee.Role, e_mail: @employee.e_mail } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { Address: @employee.Address, Country: @employee.Country, Facebook: @employee.Facebook, First_Name: @employee.First_Name, Full_Name: @employee.Full_Name, Last_Name_1: @employee.Last_Name_1, Last_Name_2: @employee.Last_Name_2, Linkedin: @employee.Linkedin, Middle_Name: @employee.Middle_Name, Mobile: @employee.Mobile, Role: @employee.Role, e_mail: @employee.e_mail } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
