require 'test_helper'

class HouseArrayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get house_array_index_url
    assert_response :success
  end

end
