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

ActiveRecord::Schema.define(version: 2021_01_14_162523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_ratings", force: :cascade do |t|
    t.integer "star"
    t.bigint "user_id", null: false
    t.bigint "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_article_ratings_on_article_id"
    t.index ["user_id"], name: "index_article_ratings_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "content"
    t.string "video_url"
    t.string "img_url"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_ratings", force: :cascade do |t|
    t.integer "star"
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_ratings_on_game_id"
    t.index ["user_id"], name: "index_game_ratings_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "article_ratings", "articles"
  add_foreign_key "article_ratings", "users"
  add_foreign_key "game_ratings", "games"
  add_foreign_key "game_ratings", "users"
end