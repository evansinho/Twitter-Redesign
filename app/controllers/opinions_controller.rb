class OpinionsController < ApplicationController
  before_action :authorize, only: [:index]

  def index
    @opinion = Opinion.new
    @opinions = Opinion.all.order("created_at DESC")
    @users = User.all.order("created_at DESC")
  end
  
  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.AuthorId = current_user.id

    if @opinion.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:Text)
  end
end
