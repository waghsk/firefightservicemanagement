class CreateHptHistories < ActiveRecord::Migration
  def self.up
    create_table :hpt_histories do |t|
      t.integer :item_subtype_id
      t.datetime :date_of_hpt
      t.string :remark
      t.string :done_by

      t.timestamps
    end
  end

  def self.down
    drop_table :hpt_histories
  end
end
