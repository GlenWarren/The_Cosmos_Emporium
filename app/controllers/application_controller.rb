class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  before_action :set_variables

  def set_variables
    user_signed_in? ? @user = current_user : @user = session[:current_user_id]
    basket = Order.find_by(user: @user, status: "Basket" || "Address")
    @order_items = OrderItem.where(order: basket)
    @user_basket = Hash.new(0)
    @order_items.each do |item|
      @user_basket[item.product] += 1
    end
  end
end
