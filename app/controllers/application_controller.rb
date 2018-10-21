class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_categorieso

  private
  def set_categorieso
    @categorieso = Category.first(9)
  end
end
