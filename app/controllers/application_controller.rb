class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  before_action :set_variables

  def set_variables
    # user_signed_in? ? @user = current_user : @user = session.id
    # session[:current_user_id]
    # byebug
    @user = current_user
    basket = Order.find_by(user: @user, status: "Basket" || "Address")
    @order_items = OrderItem.where(order: basket)
    @user_basket = Hash.new(0)
    @order_items.each do |item|
      @user_basket[item.product] += 1
    end
  end
end

# Create a guest_basket model
# Tied to session.id
# Once they log-in, transfer all the data to their Order basket?
