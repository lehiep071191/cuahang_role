class CreateCardProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :card_products do |t|
      t.integer :card_id
      t.integer :production_detail_id
      t.integer :quantity
      t.timestamps
    end
  end
end
