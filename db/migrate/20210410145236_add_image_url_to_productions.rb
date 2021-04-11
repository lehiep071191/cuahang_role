class AddImageUrlToProductions < ActiveRecord::Migration[6.1]
  def change
    add_column :productions, :image_url, :string
  end
end
