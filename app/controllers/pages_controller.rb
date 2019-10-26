class PagesController < ApplicationController
  def home
  end

  def basket
    # user_signed_in? ? @user = current_user : @user = session[:current_user_id]
    # @order = Order.find_by(user: @user, status: "Basket")
    # @order_items = OrderItem.where(order: @order)
    # @basket = Hash.new(0)
    # @order_items.each do |item|
    #   @basket[item.product] += 1
    # end
  end

  def checkout
    # @order = Order.find_by(user: current_user, status: "Basket")
    # @order_items = OrderItem.where(order: @order)
    # @basket = Hash.new(0)
    # @order_items.each do |item|
    #   @basket[item.product] += 1
    # end
  end

  def confirmation
    # @order = Order.find_by(user: current_user, status: "Basket")
    # @order_items = OrderItem.where(order: @order)
    # @basket = Hash.new(0)
    # @order_items.each do |item|
    #   @basket[item.product] += 1
    # end
  end
end
