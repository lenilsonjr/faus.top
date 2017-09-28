require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get links_create_url
    assert_response :success
  end

  test "should get show" do
    get links_show_url
    assert_response :success
  end

end
