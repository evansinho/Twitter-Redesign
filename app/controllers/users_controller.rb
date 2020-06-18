class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path
      flash[:notice] = "Welcome to Twitter #{@user.Username}"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @opinions = @user.opinions.order("created_at DESC")
    @followers = User.user_followers(params[:id], current_user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:Username, :Fullname)
  end
  
end
