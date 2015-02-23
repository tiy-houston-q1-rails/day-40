class ProductsController < ApplicationController
  def index
    @products = Product.all
    @books = Book.all
  end

  def show
    @product = Product.find params[:id]
  end
end
