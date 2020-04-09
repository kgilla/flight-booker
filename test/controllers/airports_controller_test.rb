require 'test_helper'

class AirportsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get airports_create_url
    assert_response :success
  end

end
