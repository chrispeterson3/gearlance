class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  	@categories = Category.all
    @category = Category.find_by_slug(params[:id])
    @items = Item.where(:category_id => @category.id)
    @item = Item.find_by_category_id(@category)
  end
end 