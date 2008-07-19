class CreateInspectionPeriods < ActiveRecord::Migration
  def self.up
    create_table :inspection_periods do |t|
      t.integer :item_subtype_id
      t.integer :company_id
      t.integer :days
      t.integer :weeks
      t.integer :months
      t.integer :years

      t.timestamps
    end
  end

  def self.down
    drop_table :inspection_periods
  end
end
