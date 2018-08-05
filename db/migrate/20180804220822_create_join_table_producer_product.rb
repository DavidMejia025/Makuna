class CreateJoinTableProducerProduct < ActiveRecord::Migration[5.1]
  def change
    create_join_table :producers, :products do |t|
      t.index [:producer_id, :product_id]
      t.index [:product_id, :producer_id]
    end
  end
end
