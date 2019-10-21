# typed: false
require 'test_helper'

class BigDiscreteModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @big_discrete_module = big_discrete_modules(:one)
  end

  test "should get index" do
    get big_discrete_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_big_discrete_module_url
    assert_response :success
  end

  test "should create big_discrete_module" do
    assert_difference('BigDiscreteModule.count') do
      post big_discrete_modules_url, params: { big_discrete_module: { how: @big_discrete_module.how, what: @big_discrete_module.what, when: @big_discrete_module.when, why: @big_discrete_module.why } }
    end

    assert_redirected_to big_discrete_module_url(BigDiscreteModule.last)
  end

  test "should show big_discrete_module" do
    get big_discrete_module_url(@big_discrete_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_big_discrete_module_url(@big_discrete_module)
    assert_response :success
  end

  test "should update big_discrete_module" do
    patch big_discrete_module_url(@big_discrete_module), params: { big_discrete_module: { how: @big_discrete_module.how, what: @big_discrete_module.what, when: @big_discrete_module.when, why: @big_discrete_module.why } }
    assert_redirected_to big_discrete_module_url(@big_discrete_module)
  end

  test "should destroy big_discrete_module" do
    assert_difference('BigDiscreteModule.count', -1) do
      delete big_discrete_module_url(@big_discrete_module)
    end

    assert_redirected_to big_discrete_modules_url
  end
end
