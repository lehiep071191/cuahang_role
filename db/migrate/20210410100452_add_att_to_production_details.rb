class AddAttToProductionDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :production_details, :price, :integer
    add_column :production_details, :discount, :integer

  end
end
