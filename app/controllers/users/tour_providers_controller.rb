class Users::TourProvidersController < ApplicationController
  def index
    @providers = TourProvider.all
  end

  def show
    @user = current_user
    @tour_provider = TourProvider.find(params[:id])
    @comment = @tour_provider.comments.build
    # @comments = Comment.find(params[:id])
    @tour = @tour_provider.tour

  end
end
