class FeaturedController < ApplicationController
  def index
    @items = Item.all
  end
end