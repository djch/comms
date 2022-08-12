# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_12_045427) do
  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_accounts_on_owner_id"
  end

  create_table "entries", force: :cascade do |t|
    t.integer "creator_id"
    t.integer "account_id", null: false
    t.string "entryable_type", null: false
    t.integer "entryable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_entries_on_account_id"
    t.index ["creator_id"], name: "index_entries_on_creator_id"
    t.index ["entryable_type", "entryable_id"], name: "index_entries_on_entryable"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "room_id", null: false
    t.text "body"
    t.index ["room_id"], name: "index_messages_on_room_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "rooms", force: :cascade do |t|
    t.string "title"
    t.text "subject"
  end

  add_foreign_key "accounts", "people", column: "owner_id"
  add_foreign_key "entries", "accounts"
  add_foreign_key "entries", "people", column: "creator_id"
  add_foreign_key "messages", "rooms"
end
