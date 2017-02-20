# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Schema.define(version: 20150902201235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "users", force: :cascade do |t|
    t.integer "user_id",                          null:false
    t.integer "age"
    t.text "location"
    t.text "name",                                null:false
    t.text "phone_number"
    t.integer "rating"
    t.text "user_bio"
    t.text "instrument"
    t.text "level"
  end

  create_table "jam_sessions", force: :cascade do |t|
    t.integer "jam_sessions_id",                  null: false
    t.integer "init_user_id",                     null: false
    t.integer "part_user_id",                     null: false
    t.datetime "sesh_time",                       null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    #t.datetime "created_at",                      null: false
    #t.datetime "updated_at",                      null: false
  end

  create_table "friends", force: :cascade do |t|
    t.integer  "friendable_id",                   null: false
    t.integer  "friender_id",                     null: false
    t.boolean  "blocked",         default: false, null: false
  end

  add_index "friends", ["friendable_id","friender_id"], name: "friender friends friendable", using: :btree

end