class AddLatToProducers < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :lat, :float
  end
end
