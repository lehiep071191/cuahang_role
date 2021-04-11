class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
    @products = Production.all
  end

  def help
  end
end
