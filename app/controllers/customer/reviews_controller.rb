class Customer::ReviewsController < ApplicationController

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
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to review_path(review)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to reviews_path
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
