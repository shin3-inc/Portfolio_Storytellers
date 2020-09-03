require 'test_helper'

class TourProviders::MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tour_providers_maps_create_url
    assert_response :success
  end

  test "should get index" do
    get tour_providers_maps_index_url
    assert_response :success
  end

end
