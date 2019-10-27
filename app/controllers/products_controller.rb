class ProductsController < ApplicationController
  def index
  end

  def show
    # @basket = Order.new
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
    all_similar = Product.where(category: @category)
    @similar = all_similar.reject { |prod| prod == @product }
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
