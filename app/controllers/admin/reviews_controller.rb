class Admin::ReviewsController < ApplicationController

  def index
    @reviews = Review.all.page(params[:page]).per(8)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params)
    if @review.save
      redirect_to admin_review_path
    else
      render new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def search
  end

  def tag
  end

  def tag_index
  end

  private
  def review_params
    params.require(:review).permit(:name, :heading, :year, :group_name, :member, :comment, :rate)
  end
end
