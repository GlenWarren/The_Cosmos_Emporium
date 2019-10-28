class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    if Order.find_by(user: @user, status: "Basket" || "Address").present?
      @order = Order.find_by(user: @user, status: "Basket" || "Address")
    else
      @order = Order.create(user: @user, status: "Basket")
    end
    prod = Product.find(params[:product_id])
    if (order_item = OrderItem.find_by(order: @order, product: prod))
      order_item.quantity += 1
      order_item.save
    else
      OrderItem.create(order: @order, product: prod, quantity: 1)
    end
    # prod.active = false
    # prod.save
    # raise
    redirect_to category_product_path(prod.category, prod)
    # byebug
  end

  def edit
  end

  def update
    if @order.update(order_params)
      @order.status = "Complete"
      @order.save
      redirect_to confirmation_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit(:billing_address, :shipping_address)
  end
end
