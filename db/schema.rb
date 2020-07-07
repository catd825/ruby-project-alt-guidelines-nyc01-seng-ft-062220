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

ActiveRecord::Schema.define(version: 2020_07_07_135004) do

  create_table "client_accounts", force: :cascade do |t|
    t.string "client_name"
    t.string "brand_name"
    t.integer "client_lead_id"
  end

  create_table "client_leads", force: :cascade do |t|
    t.string "name"
    t.string "title"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "employee_title"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "client_account_id"
    t.integer "employee_id"
    t.string "project_name"
  end

end
