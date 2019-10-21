# typed: false
require 'test_helper'

class EziiTeamworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ezii_teamwork = ezii_teamworks(:one)
  end

  test "should get index" do
    get ezii_teamworks_url
    assert_response :success
  end

  test "should get new" do
    get new_ezii_teamwork_url
    assert_response :success
  end

  test "should create ezii_teamwork" do
    assert_difference('EziiTeamwork.count') do
      post ezii_teamworks_url, params: { ezii_teamwork: { employee_graph_svg_text: @ezii_teamwork.employee_graph_svg_text, ezii_game_x_zip_download_link: @ezii_teamwork.ezii_game_x_zip_download_link, medium_link: @ezii_teamwork.medium_link } }
    end

    assert_redirected_to ezii_teamwork_url(EziiTeamwork.last)
  end

  test "should show ezii_teamwork" do
    get ezii_teamwork_url(@ezii_teamwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_ezii_teamwork_url(@ezii_teamwork)
    assert_response :success
  end

  test "should update ezii_teamwork" do
    patch ezii_teamwork_url(@ezii_teamwork), params: { ezii_teamwork: { employee_graph_svg_text: @ezii_teamwork.employee_graph_svg_text, ezii_game_x_zip_download_link: @ezii_teamwork.ezii_game_x_zip_download_link, medium_link: @ezii_teamwork.medium_link } }
    assert_redirected_to ezii_teamwork_url(@ezii_teamwork)
  end

  test "should destroy ezii_teamwork" do
    assert_difference('EziiTeamwork.count', -1) do
      delete ezii_teamwork_url(@ezii_teamwork)
    end

    assert_redirected_to ezii_teamworks_url
  end
end
