class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :contact_person
      t.string :contact_details

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
