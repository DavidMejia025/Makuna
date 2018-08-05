class CreateProductHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_histories do |t|
    	t.integer :product_id
    	t.string :departament
    	t.integer :year
    	t.float :production


    end

    add_index :product_histories, :product_id
  end
end
