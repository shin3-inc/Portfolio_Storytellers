require 'test_helper'

class TourProviders::TourProvidersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tour_providers_tour_providers_index_url
    assert_response :success
  end

  test "should get show" do
    get tour_providers_tour_providers_show_url
    assert_response :success
  end

  test "should get edit" do
    get tour_providers_tour_providers_edit_url
    assert_response :success
  end

  test "should get update" do
    get tour_providers_tour_providers_update_url
    assert_response :success
  end

end
