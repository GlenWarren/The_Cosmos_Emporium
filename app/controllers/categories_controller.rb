class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    @sub_categories = SubCategory.where(category: @category)
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
