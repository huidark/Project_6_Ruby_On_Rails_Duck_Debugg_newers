class GroupsController < ApplicationController
  def index
    @Groups = Group.all
  end

  def new
    @Users = User.all
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groupsI_path
    else 
      render 'new'
    end
  end

 
  def destroy
    Group.find(params[:id]).destroy
    flash[:success] = "Group deleted"
    redirect_to groupsI_path
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    respond_to do 
    @group = Group.find(params[:id])
    if @group.update(group_params)
      flash[:success] = "Profile updated"
      redirect_to groupsI_path
    else
      render 'edit'
    end
  end
end


  def group_params
    params.permit(:groupname)
  end
end
