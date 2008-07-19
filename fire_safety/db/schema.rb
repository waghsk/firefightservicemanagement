# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080719081609) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_person"
    t.string   "contact_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hpt_histories", :force => true do |t|
    t.integer  "item_subtype_id", :limit => 11
    t.datetime "date_of_hpt"
    t.string   "remark"
    t.string   "done_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inspection_histories", :force => true do |t|
    t.integer  "item_subtype_id",    :limit => 11
    t.datetime "date_of_inspection"
    t.string   "remark"
    t.string   "done_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inspection_periods", :force => true do |t|
    t.integer  "item_subtype_id", :limit => 11
    t.integer  "company_id",      :limit => 11
    t.integer  "days",            :limit => 11
    t.integer  "weeks",           :limit => 11
    t.integer  "months",          :limit => 11
    t.integer  "years",           :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_subtypes", :force => true do |t|
    t.integer  "item_type_id",  :limit => 11
    t.string   "name"
    t.string   "refill_period"
    t.string   "hpt_period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "item_subtype_id",      :limit => 11
    t.integer  "company_id",           :limit => 11
    t.string   "manufacturer"
    t.string   "manufacturer_serial"
    t.string   "capacity"
    t.string   "tare"
    t.string   "trolley_weight"
    t.datetime "next_inspection_date"
    t.datetime "next_refill_date"
    t.datetime "next_hpt_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refill_histories", :force => true do |t|
    t.integer  "item_subtype_id", :limit => 11
    t.datetime "date_of_refill"
    t.string   "remark"
    t.string   "done_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
