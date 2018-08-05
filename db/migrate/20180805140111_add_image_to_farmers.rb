class AddImageToFarmers < ActiveRecord::Migration[5.1]
  def change
    add_column :farmers, :image, :string
  end
end
