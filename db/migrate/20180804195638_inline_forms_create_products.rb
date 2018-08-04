class InlineFormsCreateProducts < ActiveRecord::Migration[5.0]

  def self.up
    create_table :products do |t|
      t.string :name 
      t.string :type 
#     t.unknown :enabled 
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end

end
