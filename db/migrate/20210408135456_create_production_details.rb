class CreateProductionDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :production_details do |t|
      t.string :color
      t.integer :rom
      t.integer :ram

      t.timestamps
    end
  end
end
