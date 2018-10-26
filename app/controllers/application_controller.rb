class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_categorieso
  helper_method :current_order

def current_order
  if !session[:order_id].nil?
    Order.find(session[:order_id])
  else
    Order.new
  end
end

  private
  def set_categorieso
    @categorieso = Category.first(9)
    @order_items = current_order.order_items
  end
end
