class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else 
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:Name, :Email, :password_digest)
  end
end
