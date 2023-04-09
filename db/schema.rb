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

ActiveRecord::Schema[7.0].define(version: 2023_04_09_090245) do
  create_table "albums", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.date "release_date", null: false
    t.text "album_cover"
    t.string "copyright"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artists_id"
    t.index ["artists_id"], name: "index_albums_on_artists_id"
  end

  create_table "artists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "country"
    t.text "about"
    t.string "monthly_listener"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlist_has_songs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "songs_id"
    t.bigint "playlists_id"
    t.index ["playlists_id"], name: "index_playlist_has_songs_on_playlists_id"
    t.index ["songs_id"], name: "index_playlist_has_songs_on_songs_id"
  end

  create_table "playlists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "duration", null: false
    t.text "genre"
    t.string "media_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "duration", null: false
    t.text "lyrics"
    t.string "media_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "albums_id"
    t.index ["albums_id"], name: "index_songs_on_albums_id"
  end

  create_table "user_has_playlists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "playlist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["playlist_id"], name: "index_user_has_playlists_on_playlist_id"
    t.index ["user_id"], name: "index_user_has_playlists_on_user_id"
  end

  create_table "user_playlists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "playlists_id"
    t.index ["playlists_id"], name: "index_user_playlists_on_playlists_id"
    t.index ["users_id"], name: "index_user_playlists_on_users_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "country", null: false
    t.integer "age", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "albums", "artists", column: "artists_id"
  add_foreign_key "playlist_has_songs", "playlists", column: "playlists_id"
  add_foreign_key "playlist_has_songs", "songs", column: "songs_id"
  add_foreign_key "songs", "albums", column: "albums_id"
  add_foreign_key "user_has_playlists", "playlists"
  add_foreign_key "user_has_playlists", "users"
  add_foreign_key "user_playlists", "playlists", column: "playlists_id"
  add_foreign_key "user_playlists", "users", column: "users_id"
end
