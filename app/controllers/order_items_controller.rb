class OrderItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    order = @order
    order_item = OrderItem.find_by(product: params[:product], order: order)
    if params[:quantity] == "add"
      order_item.quantity += 1
    elsif params[:quantity] == "subtract"
      order_item.quantity -= 1 unless order_item.quantity == 1
    end
    order_item.save
    # raise
    # redirect_to basket_path
  end

  def destroy
    order = @order
    order_item = OrderItem.find_by(product: params[:product], order: order)
    order_item.destroy
    redirect_to basket_path
  end
end
