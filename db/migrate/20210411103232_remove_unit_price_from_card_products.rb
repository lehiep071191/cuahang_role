class RemoveUnitPriceFromCardProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :card_products, :unit_price, :integer
  end
end
