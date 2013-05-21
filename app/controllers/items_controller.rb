class ItemsController < ApplicationController
  before_filter :authorize_user, only: [:new, :edit, :destroy]

  def authorize_user
    if !signed_in?
      redirect_to new_session_url,
      notice: "
      <p>You need to be logged in to add a new item.</p>
      <p>Not a member yet? <a href='#{new_user_url}'>Sign Up!</a></p>
      ".html_safe
    end
  end

  def new
    @categories = Category.all
  end

  def create
    @item = Item.new(params[:item])
    @item.user_id = session[:user_id]

    if @item.category_slug != ""
      c = Category.new
      c.name = @item.category_slug
      c.slug = @item.category_slug
      c.save
      @item.category_id = c.id
    end

    @item.save
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
