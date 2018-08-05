class AddPerformanceToProductHistories < ActiveRecord::Migration[5.1]
  def change
    add_column :product_histories, :performance, :float
  end
end
