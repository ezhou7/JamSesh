require 'test_helper'

class HomePagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "JamSesh"
  end

  test "should get root" do
    get FILL_IN
    assert_response FILL_IN
  end


  test "should get home" do
    get home_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get aboutus" do
    get home_pages_aboutus_url
    assert_response :success
    assert_select "title", "About Us | #{@base_title}"
  end

  test "should get login" do
    get home_pages_login_url
    assert_response :success
    assert_select "title", "Login | #{@base_title}"
  end

end
