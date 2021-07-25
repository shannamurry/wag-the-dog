class ReviewsController < ApplicationController
  before_action :find_walker
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.walker_id = @walker.id
    @review.user_id = current_user.id
    if @review.save
      redirect_to walker_path(@walker)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to walker_path(@walker)
    else
      render "edit"
    end
  end

  def destroy
    @review.destroy
    redirect_to walker_path(@walker)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def find_walker
    @walker = Walker.find(params[:walker_id])
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
