class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    if Order.find_by(user: @user, status: "Basket").present?
      @order = Order.find_by(user: @user, status: "Basket")
    else
      @order = Order.create(user: @user, status: "Basket")
    end
    prod = Product.find(params[:product_id])
    OrderItem.create(order: @order, product: prod, quantity: 1)
    # prod.active = false
    # prod.save
    # raise
    redirect_to category_product_path(prod.category, prod)
    # byebug
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
