# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_12_183139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.text "about"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "instagram_url"
    t.string "facebook_url"
    t.string "personal_web_url"
    t.string "photo"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.integer "height"
    t.integer "width"
    t.integer "depth"
    t.string "technique"
    t.text "about"
    t.text "description"
    t.string "period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
  end

  create_table "carnivals", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.integer "year"
    t.integer "mmonth"
    t.string "catalogue"
    t.string "gacetilla"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fair_artists", force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "fair_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_fair_artists_on_artist_id"
    t.index ["fair_id"], name: "index_fair_artists_on_fair_id"
  end

  create_table "fairs", force: :cascade do |t|
    t.string "year"
    t.string "month"
    t.string "city"
    t.string "country"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.integer "year"
    t.string "place"
    t.string "city"
    t.string "country"
    t.string "about"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "curator"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "artworks", "artists"
  add_foreign_key "fair_artists", "artists"
  add_foreign_key "fair_artists", "fairs"
end
