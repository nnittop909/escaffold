# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161119053535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomplishment_images", force: :cascade do |t|
    t.integer  "work_accomplishment_id"
    t.string   "caption"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["work_accomplishment_id"], name: "index_accomplishment_images_on_work_accomplishment_id", using: :btree
  end

  create_table "accounts", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "type"
    t.boolean  "contra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_accounts_on_code", using: :btree
    t.index ["name"], name: "index_accounts_on_name", using: :btree
    t.index ["type"], name: "index_accounts_on_type", using: :btree
  end

  create_table "activities", force: :cascade do |t|
    t.string   "trackable_type"
    t.integer  "trackable_id"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "key"
    t.text     "parameters"
    t.string   "recipient_type"
    t.integer  "recipient_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
    t.index ["owner_type", "owner_id"], name: "index_activities_on_owner_type_and_owner_id", using: :btree
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
    t.index ["recipient_type", "recipient_id"], name: "index_activities_on_recipient_type_and_recipient_id", using: :btree
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree
    t.index ["trackable_type", "trackable_id"], name: "index_activities_on_trackable_type_and_trackable_id", using: :btree
  end

  create_table "amount_revisions", force: :cascade do |t|
    t.decimal  "amount"
    t.string   "remarks"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "date"
    t.integer  "work_detail_id"
    t.integer  "user_id"
    t.decimal  "quantity"
    t.integer  "revision_type"
    t.index ["user_id"], name: "index_amount_revisions_on_user_id", using: :btree
    t.index ["work_detail_id"], name: "index_amount_revisions_on_work_detail_id", using: :btree
  end

  create_table "amounts", force: :cascade do |t|
    t.string   "type"
    t.integer  "account_id"
    t.integer  "entry_id"
    t.decimal  "amount",     precision: 20, scale: 10
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["account_id", "entry_id"], name: "index_amounts_on_account_id_and_entry_id", using: :btree
    t.index ["account_id"], name: "index_amounts_on_account_id", using: :btree
    t.index ["entry_id", "account_id"], name: "index_amounts_on_entry_id_and_account_id", using: :btree
    t.index ["entry_id"], name: "index_amounts_on_entry_id", using: :btree
    t.index ["type"], name: "index_amounts_on_type", using: :btree
  end

  create_table "attachment_files", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_attachment_files_on_project_id", using: :btree
  end

  create_table "bid_expenses", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "description"
    t.datetime "date"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.decimal  "amount",      default: "0.0"
    t.index ["project_id"], name: "index_bid_expenses_on_project_id", using: :btree
  end

  create_table "billable_materials", force: :cascade do |t|
    t.integer  "contractor_id"
    t.integer  "inventory_id"
    t.decimal  "cost"
    t.integer  "reference_number"
    t.integer  "quantity"
    t.integer  "project_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["contractor_id"], name: "index_billable_materials_on_contractor_id", using: :btree
    t.index ["inventory_id"], name: "index_billable_materials_on_inventory_id", using: :btree
    t.index ["project_id"], name: "index_billable_materials_on_project_id", using: :btree
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.datetime "date"
    t.integer  "project_id"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_collections_on_project_id", using: :btree
  end

  create_table "contract_amount_revisions", force: :cascade do |t|
    t.integer  "contract_id"
    t.integer  "contractor_id"
    t.decimal  "amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contract_id"], name: "index_contract_amount_revisions_on_contract_id", using: :btree
    t.index ["contractor_id"], name: "index_contract_amount_revisions_on_contractor_id", using: :btree
  end

  create_table "contractors", force: :cascade do |t|
    t.boolean  "main_contractor"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "position"
    t.string   "profile_image_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.decimal  "amount_subcontracted"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id", using: :btree
    t.index ["project_id"], name: "index_contracts_on_project_id", using: :btree
  end

  create_table "costs", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "type"
    t.string   "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.decimal  "unit_cost"
    t.decimal  "total_cost"
    t.datetime "date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "costable_type"
    t.integer  "costable_id"
    t.index ["project_id"], name: "index_costs_on_project_id", using: :btree
  end

  create_table "educational_attainments", force: :cascade do |t|
    t.string   "degree"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_educational_attainments_on_employee_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "mobile_number"
    t.string   "email"
    t.string   "photo_id"
    t.integer  "position"
    t.decimal  "rate"
    t.integer  "project_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "employee_type"
    t.index ["project_id"], name: "index_employees_on_project_id", using: :btree
  end

  create_table "employments", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "work_detail_id"
    t.index ["employee_id"], name: "index_employments_on_employee_id", using: :btree
    t.index ["project_id"], name: "index_employments_on_project_id", using: :btree
  end

  create_table "entries", force: :cascade do |t|
    t.datetime "date"
    t.integer  "entriable_id"
    t.string   "entriable_type"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "reference_number"
    t.string   "type"
    t.integer  "entry_type"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.integer  "equipment_id"
    t.index ["entriable_id"], name: "index_entries_on_entriable_id", using: :btree
    t.index ["entriable_type"], name: "index_entries_on_entriable_type", using: :btree
    t.index ["entry_type"], name: "index_entries_on_entry_type", using: :btree
    t.index ["equipment_id"], name: "index_entries_on_equipment_id", using: :btree
    t.index ["recipient_id"], name: "index_entries_on_recipient_id", using: :btree
    t.index ["recipient_type"], name: "index_entries_on_recipient_type", using: :btree
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "plate_number"
    t.string   "make"
    t.string   "model"
    t.integer  "employee_id"
    t.integer  "project_id"
    t.integer  "status"
    t.decimal  "acquisition_cost"
    t.datetime "acquisition_date"
    t.string   "photo"
    t.string   "chassis_number"
    t.string   "engine_number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "equipment_costs", force: :cascade do |t|
    t.string   "equipment"
    t.decimal  "number_of_equipment"
    t.decimal  "number_of_days"
    t.decimal  "daily_rate"
    t.decimal  "total_cost"
    t.integer  "work_detail_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["work_detail_id"], name: "index_equipment_costs_on_work_detail_id", using: :btree
  end

  create_table "equipment_schedules", force: :cascade do |t|
    t.integer  "equipment_id"
    t.integer  "employee_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "purpose"
    t.index ["employee_id"], name: "index_equipment_schedules_on_employee_id", using: :btree
    t.index ["equipment_id"], name: "index_equipment_schedules_on_equipment_id", using: :btree
    t.index ["project_id"], name: "index_equipment_schedules_on_project_id", using: :btree
  end

  create_table "equipment_statuses", force: :cascade do |t|
    t.integer  "status"
    t.text     "description"
    t.integer  "equipment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["equipment_id"], name: "index_equipment_statuses_on_equipment_id", using: :btree
  end

  create_table "file_attachments", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "date"
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "attached_file_file_name"
    t.string   "attached_file_content_type"
    t.integer  "attached_file_file_size"
    t.datetime "attached_file_updated_at"
    t.index ["project_id"], name: "index_file_attachments_on_project_id", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.string   "file_id"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["imageable_id"], name: "index_images_on_imageable_id", using: :btree
    t.index ["imageable_type"], name: "index_images_on_imageable_type", using: :btree
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "unit"
    t.integer  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "type"
    t.decimal  "price"
    t.integer  "item_category_id"
    t.index ["item_category_id"], name: "index_inventories_on_item_category_id", using: :btree
  end

  create_table "invoices", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "invoiceable_id"
    t.string   "invoiceable_type"
    t.datetime "date"
    t.string   "invoiced_to"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["invoiceable_id"], name: "index_invoices_on_invoiceable_id", using: :btree
    t.index ["invoiceable_type"], name: "index_invoices_on_invoiceable_type", using: :btree
  end

  create_table "issued_inventories", force: :cascade do |t|
    t.integer  "inventoriable_id"
    t.string   "inventoriable_type"
    t.string   "code"
    t.string   "description"
    t.string   "unit"
    t.decimal  "quantity"
    t.decimal  "unit_cost"
    t.decimal  "total_cost"
    t.integer  "inventory_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.datetime "date_issued"
    t.integer  "contractor_id"
    t.integer  "project_id"
    t.integer  "work_detail_id"
    t.integer  "equipment_id"
    t.index ["inventoriable_id"], name: "index_issued_inventories_on_inventoriable_id", using: :btree
    t.index ["inventoriable_type"], name: "index_issued_inventories_on_inventoriable_type", using: :btree
    t.index ["inventory_id"], name: "index_issued_inventories_on_inventory_id", using: :btree
  end

  create_table "item_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.datetime "date"
    t.string   "reference_number"
    t.decimal  "quantity"
    t.string   "unit"
    t.string   "description"
    t.integer  "itemable_id"
    t.string   "itemable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.decimal  "total_cost"
    t.decimal  "unit_cost"
    t.integer  "payment_status"
    t.index ["itemable_id"], name: "index_items_on_itemable_id", using: :btree
    t.index ["itemable_type"], name: "index_items_on_itemable_type", using: :btree
  end

  create_table "labor_costs", force: :cascade do |t|
    t.string   "personnel"
    t.decimal  "number_of_personnel"
    t.decimal  "number_of_days"
    t.decimal  "daily_rate"
    t.decimal  "total_cost"
    t.integer  "work_detail_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["work_detail_id"], name: "index_labor_costs_on_work_detail_id", using: :btree
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "inventory_id"
    t.integer  "cart_id"
    t.decimal  "quantity",     default: "1.0"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "order_id"
    t.decimal  "total_cost"
    t.decimal  "unit_cost"
    t.datetime "date"
    t.index ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
    t.index ["inventory_id"], name: "index_line_items_on_inventory_id", using: :btree
    t.index ["order_id"], name: "index_line_items_on_order_id", using: :btree
  end

  create_table "maintenances", force: :cascade do |t|
    t.integer  "equipment_id"
    t.date     "date"
    t.string   "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.decimal  "amount"
    t.string   "remarks"
    t.integer  "employee_id"
    t.integer  "work_detail_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["employee_id"], name: "index_maintenances_on_employee_id", using: :btree
    t.index ["equipment_id"], name: "index_maintenances_on_equipment_id", using: :btree
    t.index ["work_detail_id"], name: "index_maintenances_on_work_detail_id", using: :btree
  end

  create_table "miscellaneous_costs", force: :cascade do |t|
    t.string   "description"
    t.decimal  "amount"
    t.integer  "work_detail_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["work_detail_id"], name: "index_miscellaneous_costs_on_work_detail_id", using: :btree
  end

  create_table "notice_to_proceeds", force: :cascade do |t|
    t.datetime "date"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_notice_to_proceeds_on_project_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "customer_type"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "payment_status", default: 1
    t.datetime "date_issued"
    t.integer  "project_id"
    t.string   "name"
    t.string   "purpose"
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["customer_type"], name: "index_orders_on_customer_type", using: :btree
  end

  create_table "overtimes", force: :cascade do |t|
    t.integer  "employee_id"
    t.decimal  "number_of_hours"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "status",          default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["employee_id"], name: "index_overtimes_on_employee_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "paymentable_id"
    t.string   "paymentable_type"
    t.integer  "payment_type"
    t.datetime "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["paymentable_id"], name: "index_payments_on_paymentable_id", using: :btree
    t.index ["paymentable_type"], name: "index_payments_on_paymentable_type", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "main_contractor_id"
    t.string   "id_number"
    t.text     "name"
    t.string   "address"
    t.integer  "status"
    t.decimal  "duration"
    t.decimal  "cost"
    t.integer  "category_id"
    t.string   "implementing_office"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "type"
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.integer  "project_id"
    t.decimal  "quantity"
    t.string   "unit"
    t.string   "description"
    t.decimal  "unit_cost"
    t.decimal  "amount"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_purchase_orders_on_project_id", using: :btree
  end

  create_table "remarks", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "title"
    t.text     "content"
    t.integer  "remarker_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_remarks_on_project_id", using: :btree
    t.index ["remarker_id"], name: "index_remarks_on_remarker_id", using: :btree
  end

  create_table "restockings", force: :cascade do |t|
    t.decimal  "quantity"
    t.decimal  "price"
    t.integer  "inventory_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.decimal  "total_cost"
    t.index ["inventory_id"], name: "index_restockings_on_inventory_id", using: :btree
  end

  create_table "sales", force: :cascade do |t|
    t.decimal  "quantity"
    t.integer  "inventory_id"
    t.decimal  "amount"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "recipient"
    t.index ["inventory_id"], name: "index_sales_on_inventory_id", using: :btree
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "inventory_id"
    t.decimal  "quantity"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.decimal  "unit_cost"
    t.decimal  "total_cost"
    t.index ["inventory_id"], name: "index_stocks_on_inventory_id", using: :btree
  end

  create_table "subcontract_costs", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "contractor_id"
    t.string   "quantity"
    t.integer  "work_detail_id"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["contractor_id"], name: "index_subcontract_costs_on_contractor_id", using: :btree
    t.index ["work_detail_id"], name: "index_subcontract_costs_on_work_detail_id", using: :btree
  end

  create_table "time_extensions", force: :cascade do |t|
    t.integer  "number_of_days"
    t.string   "remarks"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_time_extensions_on_project_id", using: :btree
    t.index ["user_id"], name: "index_time_extensions_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "work_accomplishments", force: :cascade do |t|
    t.text     "remarks"
    t.decimal  "quantity"
    t.integer  "work_detail_id"
    t.datetime "date_accomplished"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "payment_status"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_work_accomplishments_on_user_id", using: :btree
    t.index ["work_detail_id"], name: "index_work_accomplishments_on_work_detail_id", using: :btree
  end

  create_table "work_details", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "code"
    t.string   "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.decimal  "total_cost"
    t.decimal  "unit_cost"
    t.boolean  "accomplished"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_work_details_on_project_id", using: :btree
  end

  create_table "worked_days", force: :cascade do |t|
    t.decimal  "number_of_days"
    t.integer  "employee_id"
    t.integer  "project_id"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.index ["employee_id"], name: "index_worked_days_on_employee_id", using: :btree
    t.index ["project_id"], name: "index_worked_days_on_project_id", using: :btree
  end

  add_foreign_key "accomplishment_images", "work_accomplishments"
  add_foreign_key "amounts", "accounts"
  add_foreign_key "amounts", "entries"
  add_foreign_key "attachment_files", "projects"
  add_foreign_key "bid_expenses", "projects"
  add_foreign_key "billable_materials", "contractors"
  add_foreign_key "billable_materials", "inventories"
  add_foreign_key "billable_materials", "projects"
  add_foreign_key "collections", "projects"
  add_foreign_key "contract_amount_revisions", "contractors"
  add_foreign_key "contract_amount_revisions", "contracts"
  add_foreign_key "contracts", "contractors"
  add_foreign_key "contracts", "projects"
  add_foreign_key "costs", "projects"
  add_foreign_key "educational_attainments", "employees"
  add_foreign_key "employments", "employees"
  add_foreign_key "employments", "projects"
  add_foreign_key "equipment_costs", "work_details"
  add_foreign_key "equipment_schedules", "employees"
  add_foreign_key "equipment_schedules", "equipment"
  add_foreign_key "equipment_schedules", "projects"
  add_foreign_key "equipment_statuses", "equipment"
  add_foreign_key "file_attachments", "projects"
  add_foreign_key "labor_costs", "work_details"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "inventories"
  add_foreign_key "maintenances", "employees"
  add_foreign_key "maintenances", "equipment"
  add_foreign_key "maintenances", "work_details"
  add_foreign_key "miscellaneous_costs", "work_details"
  add_foreign_key "notice_to_proceeds", "projects"
  add_foreign_key "overtimes", "employees"
  add_foreign_key "purchase_orders", "work_details", column: "project_id"
  add_foreign_key "remarks", "projects"
  add_foreign_key "restockings", "inventories"
  add_foreign_key "sales", "inventories"
  add_foreign_key "stocks", "inventories"
  add_foreign_key "subcontract_costs", "contractors"
  add_foreign_key "subcontract_costs", "work_details"
  add_foreign_key "work_accomplishments", "work_details"
  add_foreign_key "work_details", "projects"
  add_foreign_key "worked_days", "employees"
  add_foreign_key "worked_days", "projects"
end
