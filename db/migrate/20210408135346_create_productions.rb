class CreateProductions < ActiveRecord::Migration[6.1]
  def change
    create_table :productions do |t|
      t.string :name
      t.integer :category_id
      t.string :description

      t.timestamps
    end
  end
end
