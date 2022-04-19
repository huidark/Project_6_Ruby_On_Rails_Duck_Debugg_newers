class UsersController < ApplicationController
  include SessionsHelper
  def index
    @Users = User.all
  end

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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def new
    @user = User.new
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def add_to_group
    @user = User.find(params[:id])
    @groups = Group.all
  end

  def update_group
    @user = User.find(params[:id])
    @group = Group.find(params[:user][:group_id])
    if @user.update(update_group_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'add_to_group'
    end
  end

  def dashboardU
    @user = current_user
    @group = @user.group
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password_digest, :admin, :group_id)
  end

  def update_group_params
    params.require(:user).permit(:group_id)
  end
end
