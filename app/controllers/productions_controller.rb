class ProductionsController < ApplicationController
  def index
  end

  def show
    @product = Production.find_by(id: params[:id])
    @cart_product = CardProduct.new
  end
end
