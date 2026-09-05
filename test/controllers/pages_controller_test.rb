require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "h1", "Welcome to BookHub"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "h1", "About BookHub"
  end
end
