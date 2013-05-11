class ItemsController < ApplicationController
  def new
    @categories = Category.all
  end

  def create
    i = Item.new

    i.category_id = params[:category_id]
    i.name = params[:name]
    i.photo_url = params[:photo_url]
    i.description = params[:description]
    i.daily_price = params[:daily_price]
    i.weekly_price = params[:weekly_price]
    i.monthly_price = params[:monthly_price]
    i.save
    redirect_to items_url
  end

  def index
    @items = Item.all
    @categories = Category.all
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def edit
    @item = Item.find_by_id(params[:id])

    @categories = Category.all
  end

  def update
    i = Item.find_by_id(params[:id])
    i.category_id = params[:category_id]
    i.name = params[:name]
    i.photo_url = params[:photo_url]
    i.description = params[:description]
    i.daily_price = params[:daily_price]
    i.weekly_price = params[:weekly_price]
    i.monthly_price = params[:monthly_price]
    i.save

    redirect_to item_url(i)
  end

  def destroy
    i = Item.find_by_id(params[:id])
    i.destroy

    redirect_to items_url
  end
end
