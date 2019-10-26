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
    OrderItem.create(order: @order, product: params[:id], quantity: 1)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
