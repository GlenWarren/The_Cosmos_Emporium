class PagesController < ApplicationController
  def home
    @featured = Product.where(homepage: true).sample(6)
    subcats = SubCategory.where(homepage: true)
    @popular = subcats.reject { |subcat| subcat.products.count.zero? }
  end

  def basket
  end

  def checkout
  end

  def confirmation
    @ordered_items = OrderItem.where(order: @completed_order)
    @user_basket = Hash.new(0)
    @ordered_items.each do |item|
      @user_basket[item.product] += item.quantity
    end
  end
end
