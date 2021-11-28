require 'test_helper'

class CarnivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carnivals_index_url
    assert_response :success
  end

  test "should get show" do
    get carnivals_show_url
    assert_response :success
  end

end
