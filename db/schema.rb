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

ActiveRecord::Schema.define(version: 2019_10_11_071322) do

  create_table "changed_names", force: :cascade do |t|
    t.string "firstname_genitive"
    t.string "lastname_genitive"
    t.string "middlename_genitive"
    t.string "full_name_genitive"
    t.string "firstname_dative"
    t.string "lastname_dative"
    t.string "middlename_dative"
    t.string "full_name_dative"
    t.string "firstname_accusative"
    t.string "lastname_accusative"
    t.string "middlename_accusative"
    t.string "full_name_accusative"
    t.string "firstname_instrumental"
    t.string "lastname_instrumental"
    t.string "middlename_instrumental"
    t.string "full_name_instrumental"
    t.string "firstname_prepositional"
    t.string "lastname_prepositional"
    t.string "middlename_prepositional"
    t.string "full_name_prepositional"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_changed_names_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "middlename"
    t.string "sex"
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
