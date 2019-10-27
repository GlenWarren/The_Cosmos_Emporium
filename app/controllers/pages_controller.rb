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
  end
end
