class CreateRefillHistories < ActiveRecord::Migration
  def self.up
    create_table :refill_histories do |t|
      t.integer :item_subtype_id
      t.datetime :date_of_refill
      t.string :remark
      t.string :done_by

      t.timestamps
    end
  end

  def self.down
    drop_table :refill_histories
  end
end
