require "test_helper"

class MedordersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medorders_index_url
    assert_response :success
  end
end
