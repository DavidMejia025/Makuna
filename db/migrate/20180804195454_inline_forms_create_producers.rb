class InlineFormsCreateProducers < ActiveRecord::Migration[5.0]

  def self.up
    create_table :producers do |t|
      t.string :name 
#     t.unknown :lat 
      t.float :long 
      t.timestamps
    end
  end

  def self.down
    drop_table :producers
  end

end
