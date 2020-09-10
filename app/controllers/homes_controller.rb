class HomesController < ApplicationController

  def top
    @q = TourProvider.ransack(params[:q])
  end

  def about
  end

  def search
    @q = TourProvider.search(search_params)
    if @providers = @q.result(distinct: true)
    else
       render :top
    end
  end

  def index
    @providers = TourProvider.all
  end

  def show
    @tour_provider = TourProvider.find(params[:id])
    @tour = @tour_provider.tour
  end

private

  def search_params
    params.require(:q).permit(:tour_prefecture_id_eq, :tour_themes_id_in)
  end
  def homes_params
  params.require(:tour_provider).permit(
    :tour_provider_id,
    :last_name,:first_name,
    :last_name_kana,
    :first_name_kana,
    :postal_code,
    :address,
    :phone_number,
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
