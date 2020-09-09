class Users::FavoritesController < ApplicationController

  def create
    tour_provider = TourProvider.find(params[:tour_provider_id])
    favorite = current_user.favorites.new(tour_provider_id: tour_provider.id)
    favorite.save
    redirect_to request.referer
  end


  def destroy
    tour_provider = TourProvider.find(params[:tour_provider_id])
    favorite = current_user.favorites.find_by(tour_provider_id: tour_provider.id)
    favorite.destroy
    redirect_to request.referer
  end

end
