class TourProviders::TourProvidersController < ApplicationController


  def show
  	@tour_provider = current_tour_provider
    @tour = current_tour_provider.tour
  end

  def edit
    @tour_provider = current_tour_provider
  end

  def update
    @tour_provider = current_tour_provider
     @tour_provider.update(tour_provider_params)
       redirect_to tour_providers_tour_providers_path
    # else
    #   render :edit
    # end
  end



  private
  def tour_provider_params
    params.require(:tour_provider).permit(
      :last_name,:first_name,
      :last_name_kana,
      :first_name_kana,
      :postal_code,
      :address,
      :phone_number,
      :email,
      :image,
      :tour_prefecture_id,
      :tour_city,
      :profile_information,
      :twitter_url,
      :facebook_url,
      :instagram_url,
      :blog_url,
      { :tour_theme_ids=> [] }
        )
  end


end
