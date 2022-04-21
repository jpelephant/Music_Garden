class Customer::ReviewsController < ApplicationController

  def index
    @reviwes = Reviwe.all..page(params[:page]).per(8)
  end

  def show
    @reviwe = Reviwe.find(params[:id])
  end

  def new
    @reviwe = Review.new
  end

  def create
    @review = Review.new(reviwe_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
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
