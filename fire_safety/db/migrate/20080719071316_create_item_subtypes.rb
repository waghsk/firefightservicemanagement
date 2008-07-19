class CreateItemSubtypes < ActiveRecord::Migration
  def self.up
    create_table :item_subtypes do |t|
      t.integer :item_type_id
      t.string :name
      t.string :refill_period
      t.string :hpt_period

      t.timestamps
    end
  end

  def self.down
    drop_table :item_subtypes
  end
end
