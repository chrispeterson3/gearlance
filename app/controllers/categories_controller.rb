class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  	@categories = Category.all
    @category = Category.find_by_slug(params[:id])
    @items = Item.where(:category_id => @category.id)
    @itemId = Item.find_by_id(@category.id)
  end
end 