class ProductsController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
    @similar = Product.where(category: @category)
    @order = Order.new
    @order_item = OrderItem.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
