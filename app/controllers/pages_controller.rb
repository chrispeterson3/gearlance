class PagesController < ApplicationController
  def faq
    @items = Item.all
  end
end