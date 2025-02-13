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

ActiveRecord::Schema[8.0].define(version: 2025_02_13_231037) do
  create_table "boards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "board_id", null: false
    t.integer "author_id", null: false
    t.string "visibility", default: "personal", null: false
    t.integer "target_user_id"
    t.index ["author_id"], name: "index_quests_on_author_id"
    t.index ["board_id"], name: "index_quests_on_board_id"
    t.index ["target_user_id"], name: "index_quests_on_target_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.text "description"
    t.boolean "completed", default: false
    t.integer "quest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_tasks_on_quest_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "boards", "users"
  add_foreign_key "quests", "boards"
  add_foreign_key "quests", "users", column: "author_id"
  add_foreign_key "quests", "users", column: "target_user_id"
  add_foreign_key "tasks", "quests"
end
