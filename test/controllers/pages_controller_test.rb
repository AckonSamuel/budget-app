require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get splash_screen" do
    get pages_splash_screen_url
    assert_response :success
  end
end
