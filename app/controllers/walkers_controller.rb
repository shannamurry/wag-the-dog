class WalkersController < ApplicationController
  before_action :find_walker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:area].blank?
      @walkers = Walker.all.order("created_at DESC")
    else
      @area_id = Area.find_by(name: params[:area]).id
      @walkers = Walker.where(:area_id => @area_id).order("created_at DESC")
    end
  end

  def show
    if @walker.reviews.blank?
      @average_review = 0
    else
      @average_review = @walker.reviews.average(:rating).round(2)
    end
  end

  def new
    @walker = current_user.walkers.build
    @areas = Area.all.map { |a| [a.name, a.id] }
  end

  def create
    @walker = current_user.walkers.build(walker_params)
    @walker.area_id = params[:area_id]
    if @walker.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @areas = Area.all.map { |a| [a.name, a.id] }
  end

  def update
    @walker.area_id = params[:area_id]
    if @walker.update(walker_params)
      redirect_to walker_path(@walker)
    else
      render "edit"
    end
  end

  def destroy
    @walker.destroy
    redirect_to root_path
  end

  private

  def walker_params
    params.require(:walker).permit(:first_name, :last_name, :phone, :email, :city, :details, :area_id)
  end

  def find_walker
    @walker = Walker.find(params[:id])
  end
end
