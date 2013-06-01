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

  def featured
    @items = Item.all
  end

  def new
    @categories = Category.all
    @item = Item.new
  end

  def create
    if params[:category_name].present? # pull out params() to a variable and work with it
      name = params[:category_name]
      c = Category.create(name: name.singularize, slug: name.downcase.pluralize)
      params[:item][:category_id] = c.id
    end

    @item = Item.new(params[:item])
    @item.user_id = session[:user_id]

    if @item.save
      redirect_to items_url, notice: "You added an item!"
    else
      render "new"
    end
  end

  def index
    @items = Item.all
    @categories = Category.all
  end

  def show
    @item = Item.find_by_id(params[:id])
    @reservation = Reservation.new
  end

  def edit
    @item = Item.find_by_id(params[:id])

    @categories = Category.all
  end

  def update
    i = Item.find_by_id(params[:id])
    i.update_attributes(params[:item])
    i.save

    redirect_to item_url(i)
  end

  def destroy
    i = Item.find_by_id(params[:id])
    i.destroy

    redirect_to items_url
  end
end
