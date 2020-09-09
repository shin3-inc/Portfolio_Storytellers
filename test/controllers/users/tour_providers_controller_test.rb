require 'test_helper'

class Users::TourProvidersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_tour_providers_index_url
    assert_response :success
  end

  test "should get show" do
    get users_tour_providers_show_url
    assert_response :success
  end

end
