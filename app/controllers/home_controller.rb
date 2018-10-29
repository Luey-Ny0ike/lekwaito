class HomeController < ApplicationController
  def index
    @order_item = current_order.order_items.new
    @categorieso = Category.first(9)
    @liquor = Product.last(3)
    @deals = Product.where(deal: true)
    @specialoffers = Product.where(special_offer: true)
    @wc = Category.find_by_name("Whiskey")
    @whiskey = Product.where(category_id: @wc.id)
    @gc = Category.find_by_name("Gin")
    @gin = Product.where(category_id: @gc.id)
  end

  def checkout
    @order_items = current_order.order_items
    @delivery = Delivery.new
    @deliveryaddress = current_order.delivery
  end
end
