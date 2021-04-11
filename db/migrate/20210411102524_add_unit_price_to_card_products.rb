class AddUnitPriceToCardProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :card_products, :unit_price, :integer
  end
end
