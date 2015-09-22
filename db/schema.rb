# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150922195828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "fuzzystrmatch"

  create_table "cart_items", force: :cascade do |t|
    t.integer  "product_id",             null: false
    t.integer  "user_id",                null: false
    t.integer  "quantity",   default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cart_items", ["product_id"], name: "index_cart_items_on_product_id", using: :btree
  add_index "cart_items", ["user_id"], name: "index_cart_items_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "type_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["product_id"], name: "index_categories_on_product_id", using: :btree
  add_index "categories", ["type_id"], name: "index_categories_on_type_id", using: :btree

  create_table "evolutions", force: :cascade do |t|
    t.integer  "product_id",   null: false
    t.integer  "evolution_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "evolutions", ["product_id"], name: "index_evolutions_on_product_id", using: :btree

  create_table "moves", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "type_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "moves", ["type_id"], name: "index_moves_on_type_id", using: :btree

  create_table "ordered_items", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "user_id",    null: false
    t.integer  "quantity",   null: false
    t.string   "order_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ordered_items", ["user_id"], name: "index_ordered_items_on_user_id", using: :btree

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "pg_search_documents", ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree

  create_table "pokemoves", force: :cascade do |t|
    t.integer  "move_id",    null: false
    t.integer  "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "national_id",                         null: false
    t.string   "name",                                null: false
    t.integer  "discount"
    t.integer  "attack",                              null: false
    t.integer  "defense",                             null: false
    t.string   "description"
    t.string   "image_url",                           null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.decimal  "price",       precision: 8, scale: 2
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "author_id",   null: false
    t.integer  "product_id",  null: false
    t.integer  "star_rating", null: false
    t.string   "title",       null: false
    t.text     "body",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["author_id"], name: "index_reviews_on_author_id", using: :btree
  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "types", ["name"], name: "index_types_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",              null: false
    t.string   "fname",              null: false
    t.string   "lname",              null: false
    t.string   "password_digest",    null: false
    t.string   "session_token",      null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree

  create_table "views", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "views", ["product_id"], name: "index_views_on_product_id", using: :btree

end
