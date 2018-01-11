require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get home_homepage_url
    assert_response :success
  end

  test "should get homedoctor" do
    get home_homedoctor_url
    assert_response :success
  end

  test "should get homepatient" do
    get home_homepatient_url
    assert_response :success
  end

end
