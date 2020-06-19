class LikesController < ApplicationController
  def create
    Like.create(OpinionId: params[:opinion_id], UserId: current_user.id)

    flash[:notice] = "You liked a post."
    redirect_to root_path
  end

  def destroy
    @like = Like.find_user_like(current_user.id, params[:opinion_id])
    @like.destroy
      flash[:notice] = "You disliked a post."
      redirect_to root_path
  end
end
