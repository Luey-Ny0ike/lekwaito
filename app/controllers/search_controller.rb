class SearchController < ApplicationController
  def index
    @productso = Product.search(params[:search])
    @order_item = current_order.order_items.new
  end
end
