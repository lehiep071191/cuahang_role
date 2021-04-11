class CardProductsController < ApplicationController
  def create
    @cart_product = CardProduct.new(card_id: params[:card_id],production_detail_id: params[:production_detail_id], quantity: params[:quantity])
    if @cart_product.save
      render json: {
        message: "ban da them mot mon hang vao gio hang"
      }
    end
  end

  def update
  end

  def destroy
    @cart_product = CardProduct.find_by id: params[:id]
    @cart_product.destroy
  end
  private 
  def cart_product_params
    params.require(:card_product).permit(:card_id, :production_detail_id, :quantity)
  end  
end
