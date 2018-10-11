class HomeController < ActionController::Base
  def index
    @liquor = Product.last(3)
    @deals = Product.where(deal: true)
    @specialoffers = Product.where(special_offer: true)
    @wc = Category.find_by_name("Whiskey")
    @whiskey = Product.where(category_id: @wc.id)
    @gc = Category.find_by_name("Gin")
    @gin = Product.where(category_id: @gc.id)
  end
end
