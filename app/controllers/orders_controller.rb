class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @order = Order.new(user: current_user, status: "Basket")
    @order_item = OrderItem.new(order: @order, product: params[:id], quantity: 1)
    @order.save
    @order_item.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

# - user clicks button (eventlistener)
# - order = Order.where(user: current_user).find_by(status: "Basket") ? order : order = Order.create(user: current_user)
# - check if user has an order with status "Basket"
# - if not then create one
# - Create a new order_item, quantity 1
# -
