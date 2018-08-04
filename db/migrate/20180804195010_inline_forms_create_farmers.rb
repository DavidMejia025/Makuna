class InlineFormsCreateFarmers < ActiveRecord::Migration[5.0]

  def self.up
    create_table :farmers do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.timestamps
    end
  end

  def self.down
    drop_table :farmers
  end

end
