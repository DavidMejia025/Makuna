class AddProductToProductHistories < ActiveRecord::Migration[5.1]
  def change
    add_column :product_histories, :product_name, :string
  end
end
