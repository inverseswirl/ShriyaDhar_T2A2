require "test_helper"

class MeddetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meddetails_index_url
    assert_response :success
  end
end
