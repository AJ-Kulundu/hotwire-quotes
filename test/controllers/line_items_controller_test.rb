require "test_helper"

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get line_items_new_url
    assert_response :success
  end
end
