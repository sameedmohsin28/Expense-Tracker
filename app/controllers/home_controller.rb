class HomeController < ApplicationController
  def splash
    return unless user_signed_in?

    redirect_to categories_path
  end
end
