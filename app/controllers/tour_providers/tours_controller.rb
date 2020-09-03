class TourProviders::ToursController < ApplicationController

  def new
  	@tour = Tour.new
  	@tour_find = current_tour_provider.id
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.tour_provider_id = current_tour_provider.id
    @tour.save
    redirect_to tour_provider_path(current_tour_provider)
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def tour_params
    params.require(:tour).permit(:tour_provider_id, :tour_image, :tour_main_phrase, :tour_introduction, :note, :fee)
  end
end
