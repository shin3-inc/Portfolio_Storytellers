class Users::CommentsController < ApplicationController
  def create
  	tour_provider = TourProvider.find(params[:tour_provider_id])
    # comment = current_user.comments.new(comment_params)
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.tour_provider_id = tour_provider.id
    comment.save
    redirect_to users_tour_provider_path(tour_provider)
  end

  def destroy
    Comment.find_by(id: params[:id], tour_provider_id: params[:tour_provider_id]).destroy
    # comment.user_id = current_user.id
    redirect_to users_tour_provider_path(params[:tour_provider_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end

end
