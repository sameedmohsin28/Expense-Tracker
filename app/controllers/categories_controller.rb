class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save
      redirect_to categories_path, notice: 'New category added'
    else
      flash.now[:alert] = 'Unable to add new category'
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
