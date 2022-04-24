class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews
  def index
    @groups = Group.all
    @reviews = Review.all
    if params[:group_id]
      @projects = Project.where(group_id: params[:group_id])
      @reviews = Review.where(project_id: @projects)
    end
  end

  # GET /reviews/id
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/id/edit
  def edit
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to review_url(@review), notice: "Review was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/id
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to review_url(@review), notice: "Review was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/id
  def destroy
    @review.destroy

    respond_to do |format|
      if current_user.admin
        format.html { redirect_to reviews_url, notice: "Review was successfully destroyed." }
      else 
        format.html { redirect_to dashboardU_path}
      end
    end
  end

  # Get proj into the reviews controller
  def proj
    @reviews = Review.where(project_id: params[:id])
    @reviews = @reviews.where(user_id: current_user.id)
    @project = Project.find(params[:id])
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:comment, :score, :user_id, :project_id)
    end
end
