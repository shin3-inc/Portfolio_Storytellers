class TourProviders::TourProvidersController < ApplicationController

  def index
  end

  def show
  	@tour_provider = current_tour_provider
  end

  def edit
  end

  def update
  end

  private
  def tour_provider_params
    params.require(:tour_provider).permit(:tour_theme_ids [],:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:phone_number,:profile_image,:tour_prefecture_id,:tour_city,:profile_information,:twitter_url,:facebook_url,:instagram_url,:blog_url)
  end

end
