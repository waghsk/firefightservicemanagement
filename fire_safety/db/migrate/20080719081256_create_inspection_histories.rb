class CreateInspectionHistories < ActiveRecord::Migration
  def self.up
    create_table :inspection_histories do |t|
      t.integer :item_subtype_id
      t.datetime :date_of_inspection
      t.string :remark
      t.string :done_by

      t.timestamps
    end
  end

  def self.down
    drop_table :inspection_histories
  end
end
