class GroupsController < ApplicationController

  # GET /groups
  def index
    @Groups = Group.all
  end

  # GET /groups/new
  def new
    @Users = User.all
    @group = Group.new
  end

  # GET /groups/id
  def show
    @group = Group.find(params[:id])
  end

  # POST /groups
  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groupsI_path
    else 
      render 'new'
    end
  end

  # DELETE /groups/id
  def destroy
    @group = Group.find(params[:id])
    reviews = true
    @group.projects.each do |project|
      if project.reviews
        reviews = false
        break
      end
    end
    if reviews
      Group.find(params[:id]).destroy
      flash[:success] = "Group deleted"
      redirect_to groupsI_path
    else
      
      render 'edit', alert: "Email in use or invalid email"
    end
  end

  # GET /groups/id/edit
  def edit
    @group = Group.find(params[:id])
    
  end

  # PATCH/PUT /grouos/id
  def update
    @group = Group.find(params[:id])
    if @group.update(group_params2)
      flash[:success] = "Profile updated"
      redirect_to groupsI_path
    else
      render 'edit'
    end
  end
  
private
  # Only allow a list of trusted parameters through.
  def group_params
    params.permit(:groupname)
  end



  def group_params2
    params.require(:group).permit(:groupname, :projects)
  end
end
