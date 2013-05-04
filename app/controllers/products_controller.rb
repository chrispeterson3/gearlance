class ProductsController < ApplicationController
  def new

  end

  def create
    p = Product.new
    p.category_id = params[:category_id]
    p.name = params[:name]
    p.photo_url = params[:photo_url]
    p.description = params[:description]
    p.daily_price = params[:daily_price]
    p.weekly_price = params[:weekly_price]
    p.monthly_price = params[:monthly_price]
    p.save
    redirect_to products_url
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by_id(params[:id])
  end
end