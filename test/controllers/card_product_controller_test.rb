require "test_helper"

class CardProductControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get card_product_create_url
    assert_response :success
  end

  test "should get update" do
    get card_product_update_url
    assert_response :success
  end

  test "should get destroy" do
    get card_product_destroy_url
    assert_response :success
  end
end
