require "test_helper"

class EmployeeInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_infos_index_url
    assert_response :success
  end
end
