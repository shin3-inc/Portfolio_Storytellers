class HomesController < ApplicationController

  def top
    @q = TourProvider.ransack(params[:q])
  end

  def about
  end

  def search
    @q = TourProvider.search(search_params)
    @providers = @q.result(distinct: true)
  end

private

  def search_params
    params.require(:q).permit(:tour_prefecture_id_eq, :tour_themes_id_in)
  end
end
