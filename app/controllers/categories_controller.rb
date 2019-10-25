class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    @sub_category = SubCategory.new
    @sub_categories = SubCategory.where(category: @category)
    if params[:filter].present?
      @active_subcat = SubCategory.find_by(name: params[:filter])
      @products = @active_subcat.products
    else
      @products = Product.where(category: @category)
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
