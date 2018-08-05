class CreateJoinTablefarmerProduct < ActiveRecord::Migration[5.1]
  def change
    create_join_table :farmers, :products do |t|
      t.index [:farmer_id, :product_id]
      t.index [:product_id, :farmer_id]
    end
  end
end
