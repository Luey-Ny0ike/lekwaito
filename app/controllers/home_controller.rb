class HomeController < ActionController::Base
  def index
    @liquor = Product.last(3)
  end
end
