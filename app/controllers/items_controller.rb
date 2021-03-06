class ItemsController < ApplicationController
  before_filter :authorize_user, only: [:new, :edit, :destroy]

  def authorize_user
    if !signed_in?
      redirect_to new_session_url,
      notice: "You need to be logged in to add a new item."
    end
  end

  def featured
    @items = Item.all
  end

  def new
    @categories = Category.all
    @subcategories = Subcategory.all
    @item = Item.new
  end

  def create
    if params[:category_name].present? # pull out params() to a variable and work with it
      name = params[:category_name]
      c = Category.create(name: name.singularize, slug: name.downcase.pluralize)
      params[:item][:category_id] = c.id
    end

    if params[:subcategory_subname].present? # pull out params() to a variable and work with it
      subname = params[:subcategory_subname]
      sc = Subcategory.create(subname: subname.singularize, slug: subname.downcase.pluralize)
      params[:item][:subcategory_id] = sc.id
    end


    @item = Item.new(params[:item])
    @item.user_id = session[:user_id]

    if @item.save
      redirect_to user_url(session[:user_id]), notice: "You added an item!"
    else
      render "new"
    end
  end

  def index
    @items = Item.page(params[:page]).per(10)
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
    @item = Item.find_by_id(params[:id])
    id = @item.user.id
    @item.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to user_url(id) }
    end
  end
end
