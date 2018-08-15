class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
    @applications = Application.joins(:comics).includes(:comics).where(comics: {id: params[:id]})
    @reviews = Review.where(comic_id: params[:id])
  end
end
