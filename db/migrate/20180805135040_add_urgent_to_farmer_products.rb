class AddUrgentToFarmerProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :farmers_products, :urgent, :integer, default: 0
  end
end
