class ProductsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @products = Product.last
    @user = current_user
    @url = params[:url]
    @title ||= params[:title]
  end

  def new
    @user = current_user
    @url = params[:url]
    @title = params[:selTitle]
  end

  def create
    Product.create(params[:product])
    redirect_to '/products'
  end

end
