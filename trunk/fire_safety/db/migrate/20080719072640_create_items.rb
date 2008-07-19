class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :item_subtype_id
      t.integer :company_id
      t.string :manufacturer
      t.string :manufacturer_serial
      t.string :capacity
      t.string :tare
      t.string :trolley_weight
      t.datetime :next_inspection_date
      t.datetime :next_refill_date
      t.datetime :next_hpt_date

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
