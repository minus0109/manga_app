class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
    @applications = Application.includes(:comics).where(comics: {id: params[:id]})
    @reviews = Review.where(comic_id: params[:id]).order('created_at DESC')
    @staravg = Review.where(comic_id: params[:id]).average(:star)
  end
end
