class ProductsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @products = Product.last
  end

  def new

  end

end
