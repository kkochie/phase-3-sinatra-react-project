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

ActiveRecord::Schema.define(version: 2022_08_04_234138) do

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.string "email"
    t.string "contact_name"
    t.string "phone"
    t.integer "project_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "skill"
    t.integer "project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "business_id"
    t.integer "team_id"
    t.string "name"
    t.string "description"
    t.string "due_date"
    t.integer "task_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "description"
    t.integer "project_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "project_id"
    t.string "name"
    t.boolean "complete"
    t.string "description"
    t.string "skills_needed"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "member_id"
    t.string "team_name"
    t.string "skills"
    t.integer "project_id"
  end

end
