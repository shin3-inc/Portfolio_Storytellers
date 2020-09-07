class TourProviders::ToursController < ApplicationController

  def new
  	@tour = Tour.new
  	# @tour_find = current_tour_provider.id
  	@tour.courses.build
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.tour_provider_id = current_tour_provider.id
    @tour.save
    redirect_to tour_providers_tour_providers_path
  end

  def show
  end

  def edit
    @tour = Tour.find(current_tour_provider.id)
    @tour.courses.build
  end

  def update
    @tour = Tour.find(current_tour_provider.id)
    if @tour.update(tour_params)
      redirect_to tour_providers_tour_providers_path(@tour)
    else
       render "edit"
    end
  end

  private
  def tour_params
    params.require(:tour).permit(
    	:tour_provider_id,
    	:image,
    	:tour_main_phrase,
    	:tour_introduction,
    	:note,
    	:fee,
    	courses_attributes: [
    		:id,
    		:image,
    		:course_introduction,
    		:_destroy
    	    ]
    	)
  end
end
