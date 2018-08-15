class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(comic_id: @topic_id)
  end

  def new
    @comic = Comic.find(params[:comic_id])
    @review = Review.new
  end

  def create
    @comic = Comic.find(params[:comic_id])
    @review = Review.new(review_params)

    if @review.save
      redirect_to comic_path(params[:comic_id]), success: 'コメント投稿に成功しました'
    else
      flash.now[:danger] = 'コメント投稿に失敗しました'
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:star, :context).merge(comic_id: params[:comic_id])
  end
end
