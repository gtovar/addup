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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120917203322) do

  create_table "careers", :force => true do |t|
    t.string   "name"
    t.integer  "years"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "url_logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "university_id"
    t.integer  "career_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "university_id"
    t.integer  "career_id"
    t.integer  "teacher_id"
    t.integer  "organization_id"
    t.string   "country"
    t.string   "city"
    t.integer  "campaign"
    t.text     "question1"
    t.text     "question2"
    t.boolean  "verified"
    t.integer  "cost_per_year"
    t.text     "url_video"
    t.string   "url_facebook"
    t.string   "url_twitter"
    t.string   "url_university"
    t.integer  "current_year"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "students", ["career_id"], :name => "index_students_on_career_id"
  add_index "students", ["organization_id"], :name => "index_students_on_organization_id"
  add_index "students", ["teacher_id"], :name => "index_students_on_teacher_id"
  add_index "students", ["university_id"], :name => "index_students_on_university_id"

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.boolean  "verified"
    t.string   "review"
    t.integer  "university_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "teachers", ["university_id"], :name => "index_teachers_on_university_id"

  create_table "universities", :force => true do |t|
    t.string   "name"
    t.string   "url_logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
