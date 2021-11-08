require "test_helper"

class MedicalProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medical_products_index_url
    assert_response :success
  end
end
