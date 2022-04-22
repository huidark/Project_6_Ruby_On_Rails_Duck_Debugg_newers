class UsersController < ApplicationController
  include SessionsHelper
  # GET /users
  def index
    @Users = User.all
  end

  # GET /users/id
  def show
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)
    
    if @user.save
      if current_user
        redirect_to users_path
      else
        redirect_to login_path
      end
    else # not a valid email or password inputted by user
      
      redirect_to signup_path, alert: "Email in use or invalid email"
    end
  end

  # GET /users/id/edit
  def edit
    @user = User.find(params[:id])
  end

  # PATCH/PUT /reviews/id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else # User has not been updated yet
      render 'edit'
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # DELETE /users/id
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  # GET /groups
  def add_to_group
    @user = User.find(params[:id])
    @groups = Group.all
  end

  # PATCH/PUT users/groups/id
  def update_group
    @user = User.find(params[:id])
    @group = Group.find(params[:user][:group_id])
    if @user.update(update_group_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else # User not updated to a new group yet
      render 'add_to_group'
    end
  end

  # GET /users
  def dashboardU
    @user = current_user
    @group = @user.group
  end


  private
   # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password_digest, :admin, :group_id)
  end

  def update_group_params
    params.require(:user).permit(:group_id)
  end
end
