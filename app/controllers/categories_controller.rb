class CategoriesController < ApplicationController
  def index
    @categories = User.find(2).categories
  end

  def new
  end

  def create
  end
end
