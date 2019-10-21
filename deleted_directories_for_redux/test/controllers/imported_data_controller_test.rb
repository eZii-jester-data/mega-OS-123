# typed: false
require 'test_helper'

class ImportedDataControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get imported_data_overview_url
    assert_response :success
  end

end
