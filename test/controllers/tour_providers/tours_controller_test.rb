require 'test_helper'

class TourProviders::ToursControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tour_providers_tours_create_url
    assert_response :success
  end

  test "should get show" do
    get tour_providers_tours_show_url
    assert_response :success
  end

  test "should get edit" do
    get tour_providers_tours_edit_url
    assert_response :success
  end

  test "should get update" do
    get tour_providers_tours_update_url
    assert_response :success
  end

end
