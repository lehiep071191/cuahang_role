class AddProductionIdToProductionDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :production_details, :production_id, :integer, foreign_key: :true
  end
end
