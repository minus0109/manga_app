class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
    @comics = Comic.all
    # require 'net/http'
    # require 'uri'
    # require 'json'
    #
    # uri = URI.parse('https://get.mobu.jp/api/ads/3.3/?pcode=manga-app&device=android')
    # json = Net::HTTP.get(uri)
    # option = JSON.parse(json)
    # maxpage = option['adSearch']['ads']['maxPage'].to_i
    #
    # @title = []
    #
    # for page in 1..1 do
    #   uri = URI.parse("https://get.mobu.jp/api/ads/3.3/?pcode=manga-app&device=android&page=#{page}")
    #   json = Net::HTTP.get(uri)
    #   result = JSON.parse(json)
    #   result = result['adSearch']['ads']['ad']
    #   # for i in 1..count-1 do
    #   #   tmp = result['adSearch']['ads']['ad'][i]['title']
    #   #   @title.push(tmp)
    #   #   tmp = result['adSearch']['ads']['ad'][i]['unit_price']
    #   #   @unit_price.push(tmp)
    #   # end
    #   result.each do |data|
    #     @title.push()
    #   end
    # end
  end
  def show
    @application = Application.find(params[:id])

    # @comics = Comic.includes(:applications).where(application_id: params[:id])
    @comics = Comic.includes(:applications).where(applications: {id: params[:id]})
    @comics = @comics.page(params[:page])
  end
end
